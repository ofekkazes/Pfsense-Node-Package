const profile = require('npm-profile')
const npm = require('./npm.js')
const output = require('./utils/output.js')
const otplease = require('./utils/otplease.js')
const Table = require('cli-table3')
const isCidrV4 = require('is-cidr').v4
const isCidrV6 = require('is-cidr').v6
const readUserInfo = require('./utils/read-user-info.js')
const ansistyles = require('ansistyles')
const log = require('npmlog')
const pulseTillDone = require('./utils/pulse-till-done.js')

module.exports = token

token._validateCIDRList = validateCIDRList

const usageUtil = require('./utils/usage.js')
token.usage = usageUtil('token',
  'npm token list\n' +
  'npm token revoke <tokenKey>\n' +
  'npm token create [--read-only] [--cidr=list]')

const UsageError = (msg) =>
  Object.assign(new Error(`\nUsage: ${msg}\n\n` + token.usage), {
    code: 'EUSAGE',
  })

const InvalidCIDRError = (msg) =>
  Object.assign(new Error(msg), { code: 'EINVALIDCIDR' })

token.subcommands = ['list', 'revoke', 'create']

token.completion = function (opts, cb) {
  var argv = opts.conf.argv.remain
  if (argv.length === 2)
    return cb(null, token.subcommands)

  switch (argv[2]) {
    case 'list':
    case 'revoke':
    case 'create':
      return cb(null, [])
    default:
      return cb(new Error(argv[2] + ' not recognized'))
  }
}

function withCb (prom, cb) {
  prom.then((value) => cb(null, value), cb)
}

function token (args, cb) {
  log.gauge.show('token')
  if (args.length === 0)
    return withCb(list([]), cb)
  switch (args[0]) {
    case 'list':
    case 'ls':
      withCb(list(), cb)
      break
    case 'delete':
    case 'revoke':
    case 'remove':
    case 'rm':
      withCb(rm(args.slice(1)), cb)
      break
    case 'create':
      withCb(create(args.slice(1)), cb)
      break
    default:
      cb(UsageError(`${args[0]} is not a recognized subcommand.`))
  }
}

function generateTokenIds (tokens, minLength) {
  const byId = {}
  for (const token of tokens) {
    token.id = token.key
    for (let ii = minLength; ii < token.key.length; ++ii) {
      const match = tokens.some(ot =>
        ot !== token &&
        ot.key.slice(0, ii) === token.key.slice(0, ii))
      if (!match) {
        token.id = token.key.slice(0, ii)
        break
      }
    }
    byId[token.id] = token
  }
  return byId
}

function config () {
  const conf = { ...npm.flatOptions }
  const creds = npm.config.getCredentialsByURI(conf.registry)
  if (creds.token)
    conf.auth = { token: creds.token }
  else if (creds.username) {
    conf.auth = {
      basic: {
        username: creds.username,
        password: creds.password,
      },
    }
  } else if (creds.auth) {
    const auth = Buffer.from(creds.auth, 'base64').toString().split(':', 2)
    conf.auth = {
      basic: {
        username: auth[0],
        password: auth[1],
      },
    }
  } else
    conf.auth = {}

  if (conf.otp)
    conf.auth.otp = conf.otp
  return conf
}

function list (args) {
  const conf = config()
  log.info('token', 'getting list')
  return pulseTillDone.withPromise(profile.listTokens(conf)).then((tokens) => {
    if (conf.json) {
      output(JSON.stringify(tokens, null, 2))
      return
    } else if (conf.parseable) {
      output(['key', 'token', 'created', 'readonly', 'CIDR whitelist'].join('\t'))
      tokens.forEach((token) => {
        output([
          token.key,
          token.token,
          token.created,
          token.readonly ? 'true' : 'false',
          token.cidr_whitelist ? token.cidr_whitelist.join(',') : '',
        ].join('\t'))
      })
      return
    }
    generateTokenIds(tokens, 6)
    const idWidth = tokens.reduce((acc, token) =>
      Math.max(acc, token.id.length), 0)
    const table = new Table({
      head: ['id', 'token', 'created', 'readonly', 'CIDR whitelist'],
      colWidths: [Math.max(idWidth, 2) + 2, 9, 12, 10],
    })
    tokens.forEach((token) => {
      table.push([
        token.id,
        token.token + '???',
        String(token.created).slice(0, 10),
        token.readonly ? 'yes' : 'no',
        token.cidr_whitelist ? token.cidr_whitelist.join(', ') : '',
      ])
    })
    output(table.toString())
  })
}

function rm (args) {
  if (args.length === 0)
    return Promise.reject(UsageError('`<tokenKey>` argument is required.'))

  const conf = config()
  const toRemove = []
  const progress = log.newItem('removing tokens', toRemove.length)
  progress.info('token', 'getting existing list')
  return pulseTillDone.withPromise(profile.listTokens(conf).then((tokens) => {
    args.forEach((id) => {
      const matches = tokens.filter((token) => token.key.indexOf(id) === 0)
      if (matches.length === 1)
        toRemove.push(matches[0].key)
      else if (matches.length > 1)
        throw new Error(`Token ID "${id}" was ambiguous, a new token may have been created since you last ran \`npm token list\`.`)
      else {
        const tokenMatches = tokens.some(t => id.indexOf(t.token) === 0)
        if (!tokenMatches)
          throw new Error(`Unknown token id or value "${id}".`)

        toRemove.push(id)
      }
    })
    return Promise.all(toRemove.map(key => {
      return otplease(conf, conf => {
        return profile.removeToken(key, conf)
      })
    }))
  })).then(() => {
    if (conf.json)
      output(JSON.stringify(toRemove))
    else if (conf.parseable)
      output(toRemove.join('\t'))
    else
      output('Removed ' + toRemove.length + ' token' + (toRemove.length !== 1 ? 's' : ''))
  })
}

function create (args) {
  const conf = config()
  const cidr = conf.cidr
  const readonly = conf.readOnly

  return readUserInfo.password().then((password) => {
    const validCIDR = validateCIDRList(cidr)
    log.info('token', 'creating')
    return pulseTillDone.withPromise(otplease(conf, conf => {
      return profile.createToken(password, readonly, validCIDR, conf)
    }))
  }).then((result) => {
    delete result.key
    delete result.updated
    if (conf.json)
      output(JSON.stringify(result))
    else if (conf.parseable)
      Object.keys(result).forEach((k) => output(k + '\t' + result[k]))
    else {
      const table = new Table()
      for (const k of Object.keys(result))
        table.push({ [ansistyles.bright(k)]: String(result[k]) })
      output(table.toString())
    }
  })
}

function validateCIDR (cidr) {
  if (isCidrV6(cidr))
    throw InvalidCIDRError('CIDR whitelist can only contain IPv4 addresses, ' + cidr + ' is IPv6')

  if (!isCidrV4(cidr))
    throw InvalidCIDRError('CIDR whitelist contains invalid CIDR entry: ' + cidr)
}

function validateCIDRList (cidrs) {
  const maybeList = cidrs ? (Array.isArray(cidrs) ? cidrs : [cidrs]) : []
  const list = maybeList.length === 1 ? maybeList[0].split(/,\s*/) : maybeList
  list.forEach(validateCIDR)
  return list
}
