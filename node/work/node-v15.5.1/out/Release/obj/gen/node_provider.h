/*
 * Generated by dtrace(1M).
 */

#ifndef	_NODE_PROVIDER_H
#define	_NODE_PROVIDER_H

#include <unistd.h>

#ifdef	__cplusplus
extern "C" {
#endif

#include <sys/sdt.h>

#if _DTRACE_VERSION

#define	NODE_GC_DONE(arg0, arg1, arg2) \
	__dtrace_node___gc__done(arg0, arg1, arg2)
#ifndef	__sparc
#define	NODE_GC_DONE_ENABLED() \
	__dtraceenabled_node___gc__done()
#else
#define	NODE_GC_DONE_ENABLED() \
	__dtraceenabled_node___gc__done(0)
#endif
#define	NODE_GC_START(arg0, arg1, arg2) \
	__dtrace_node___gc__start(arg0, arg1, arg2)
#ifndef	__sparc
#define	NODE_GC_START_ENABLED() \
	__dtraceenabled_node___gc__start()
#else
#define	NODE_GC_START_ENABLED() \
	__dtraceenabled_node___gc__start(0)
#endif
#define	NODE_HTTP_CLIENT_REQUEST(arg0, arg1, arg2, arg3, arg4, arg5, arg6) \
	__dtrace_node___http__client__request(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
#ifndef	__sparc
#define	NODE_HTTP_CLIENT_REQUEST_ENABLED() \
	__dtraceenabled_node___http__client__request()
#else
#define	NODE_HTTP_CLIENT_REQUEST_ENABLED() \
	__dtraceenabled_node___http__client__request(0)
#endif
#define	NODE_HTTP_CLIENT_RESPONSE(arg0, arg1, arg2, arg3) \
	__dtrace_node___http__client__response(arg0, arg1, arg2, arg3)
#ifndef	__sparc
#define	NODE_HTTP_CLIENT_RESPONSE_ENABLED() \
	__dtraceenabled_node___http__client__response()
#else
#define	NODE_HTTP_CLIENT_RESPONSE_ENABLED() \
	__dtraceenabled_node___http__client__response(0)
#endif
#define	NODE_HTTP_SERVER_REQUEST(arg0, arg1, arg2, arg3, arg4, arg5, arg6) \
	__dtrace_node___http__server__request(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
#ifndef	__sparc
#define	NODE_HTTP_SERVER_REQUEST_ENABLED() \
	__dtraceenabled_node___http__server__request()
#else
#define	NODE_HTTP_SERVER_REQUEST_ENABLED() \
	__dtraceenabled_node___http__server__request(0)
#endif
#define	NODE_HTTP_SERVER_RESPONSE(arg0, arg1, arg2, arg3) \
	__dtrace_node___http__server__response(arg0, arg1, arg2, arg3)
#ifndef	__sparc
#define	NODE_HTTP_SERVER_RESPONSE_ENABLED() \
	__dtraceenabled_node___http__server__response()
#else
#define	NODE_HTTP_SERVER_RESPONSE_ENABLED() \
	__dtraceenabled_node___http__server__response(0)
#endif
#define	NODE_NET_SERVER_CONNECTION(arg0, arg1, arg2, arg3) \
	__dtrace_node___net__server__connection(arg0, arg1, arg2, arg3)
#ifndef	__sparc
#define	NODE_NET_SERVER_CONNECTION_ENABLED() \
	__dtraceenabled_node___net__server__connection()
#else
#define	NODE_NET_SERVER_CONNECTION_ENABLED() \
	__dtraceenabled_node___net__server__connection(0)
#endif
#define	NODE_NET_STREAM_END(arg0, arg1, arg2, arg3) \
	__dtrace_node___net__stream__end(arg0, arg1, arg2, arg3)
#ifndef	__sparc
#define	NODE_NET_STREAM_END_ENABLED() \
	__dtraceenabled_node___net__stream__end()
#else
#define	NODE_NET_STREAM_END_ENABLED() \
	__dtraceenabled_node___net__stream__end(0)
#endif


extern void __dtrace_node___gc__done(int, int, void *);
#ifndef	__sparc
extern int __dtraceenabled_node___gc__done(void);
#else
extern int __dtraceenabled_node___gc__done(long);
#endif
extern void __dtrace_node___gc__start(int, int, void *);
#ifndef	__sparc
extern int __dtraceenabled_node___gc__start(void);
#else
extern int __dtraceenabled_node___gc__start(long);
#endif
extern void __dtrace_node___http__client__request(node_dtrace_http_client_request_t *, node_dtrace_connection_t *, char *, int, char *, char *, int);
#ifndef	__sparc
extern int __dtraceenabled_node___http__client__request(void);
#else
extern int __dtraceenabled_node___http__client__request(long);
#endif
extern void __dtrace_node___http__client__response(node_dtrace_connection_t *, char *, int, int);
#ifndef	__sparc
extern int __dtraceenabled_node___http__client__response(void);
#else
extern int __dtraceenabled_node___http__client__response(long);
#endif
extern void __dtrace_node___http__server__request(node_dtrace_http_server_request_t *, node_dtrace_connection_t *, char *, int, char *, char *, int);
#ifndef	__sparc
extern int __dtraceenabled_node___http__server__request(void);
#else
extern int __dtraceenabled_node___http__server__request(long);
#endif
extern void __dtrace_node___http__server__response(node_dtrace_connection_t *, char *, int, int);
#ifndef	__sparc
extern int __dtraceenabled_node___http__server__response(void);
#else
extern int __dtraceenabled_node___http__server__response(long);
#endif
extern void __dtrace_node___net__server__connection(node_dtrace_connection_t *, char *, int, int);
#ifndef	__sparc
extern int __dtraceenabled_node___net__server__connection(void);
#else
extern int __dtraceenabled_node___net__server__connection(long);
#endif
extern void __dtrace_node___net__stream__end(node_dtrace_connection_t *, char *, int, int);
#ifndef	__sparc
extern int __dtraceenabled_node___net__stream__end(void);
#else
extern int __dtraceenabled_node___net__stream__end(long);
#endif

#else

#define	NODE_GC_DONE(arg0, arg1, arg2)
#define	NODE_GC_DONE_ENABLED() (0)
#define	NODE_GC_START(arg0, arg1, arg2)
#define	NODE_GC_START_ENABLED() (0)
#define	NODE_HTTP_CLIENT_REQUEST(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
#define	NODE_HTTP_CLIENT_REQUEST_ENABLED() (0)
#define	NODE_HTTP_CLIENT_RESPONSE(arg0, arg1, arg2, arg3)
#define	NODE_HTTP_CLIENT_RESPONSE_ENABLED() (0)
#define	NODE_HTTP_SERVER_REQUEST(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
#define	NODE_HTTP_SERVER_REQUEST_ENABLED() (0)
#define	NODE_HTTP_SERVER_RESPONSE(arg0, arg1, arg2, arg3)
#define	NODE_HTTP_SERVER_RESPONSE_ENABLED() (0)
#define	NODE_NET_SERVER_CONNECTION(arg0, arg1, arg2, arg3)
#define	NODE_NET_SERVER_CONNECTION_ENABLED() (0)
#define	NODE_NET_STREAM_END(arg0, arg1, arg2, arg3)
#define	NODE_NET_STREAM_END_ENABLED() (0)

#endif


#ifdef	__cplusplus
}
#endif

#endif	/* _NODE_PROVIDER_H */
