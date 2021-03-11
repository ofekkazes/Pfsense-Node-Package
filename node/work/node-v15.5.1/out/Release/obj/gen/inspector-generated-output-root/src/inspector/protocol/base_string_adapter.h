// This file is generated by base_string_adapter_h.template.

// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef v8_inspector_protocol_BASE_STRING_ADAPTER_H
#define v8_inspector_protocol_BASE_STRING_ADAPTER_H

#include <memory>
#include <string>
#include <vector>

#include "base/logging.h"
#include "base/macros.h"
#include "base/memory/ref_counted_memory.h"
#include "../../deps/v8/third_party/inspector_protocol/crdtp/serializable.h"
#include "../../deps/v8/third_party/inspector_protocol/crdtp/protocol_core.h"


namespace base {
class Value;
}

namespace v8_crdtp {
class DeserializerState;
}

namespace v8_inspector {
namespace protocol {

class Value;

using String = std::string;

class  StringUtil {
 public:
  static String fromUTF8(const uint8_t* data, size_t length) {
    return std::string(reinterpret_cast<const char*>(data), length);
  }

  static String fromUTF16LE(const uint16_t* data, size_t length);

  static const uint8_t* CharactersLatin1(const String& s) { return nullptr; }
  static const uint8_t* CharactersUTF8(const String& s) {
    return reinterpret_cast<const uint8_t*>(s.data());
  }
  static const uint16_t* CharactersUTF16(const String& s) { return nullptr; }
  static size_t CharacterCount(const String& s) { return s.size(); }

  static bool ReadString(v8_crdtp::DeserializerState* state, String* str);
  static void WriteString(const String& str, std::vector<uint8_t>* bytes);
};

// A read-only sequence of uninterpreted bytes with reference-counted storage.
class  Binary : public v8_crdtp::Serializable {
 public:
  Binary(const Binary&);
  Binary();
  ~Binary();

  // Implements Serializable.
  void AppendSerialized(std::vector<uint8_t>* out) const override;

  const uint8_t* data() const { return bytes_->front(); }
  size_t size() const { return bytes_->size(); }
  scoped_refptr<base::RefCountedMemory> bytes() const { return bytes_; }

  String toBase64() const;

  static Binary fromBase64(const String& base64, bool* success);
  static Binary fromRefCounted(scoped_refptr<base::RefCountedMemory> memory);
  static Binary fromVector(std::vector<uint8_t> data);
  static Binary fromString(std::string data);
  static Binary fromSpan(const uint8_t* data, size_t size);

 private:
  explicit Binary(scoped_refptr<base::RefCountedMemory> bytes);
  scoped_refptr<base::RefCountedMemory> bytes_;
};

std::unique_ptr<Value> toProtocolValue(const base::Value* value, int depth);
std::unique_ptr<base::Value> toBaseValue(Value* value, int depth);
} // namespace v8_inspector
} // namespace protocol

namespace v8_crdtp {

template <>
struct ProtocolTypeTraits<v8_inspector::protocol::String> {
  static bool Deserialize(DeserializerState* state, v8_inspector::protocol::String* value) {
    return v8_inspector::protocol::StringUtil::ReadString(state, value);
  }
  static void Serialize(const v8_inspector::protocol::String& value, std::vector<uint8_t>* bytes) {
    v8_inspector::protocol::StringUtil::WriteString(value, bytes);
  }
};

template <>
struct ProtocolTypeTraits<v8_inspector::protocol::Binary> {
  static bool Deserialize(DeserializerState* state, v8_inspector::protocol::Binary* value);
  static void Serialize(const v8_inspector::protocol::Binary& value, std::vector<uint8_t>* bytes);
};

}  // v8_crdtp

#endif // !defined(v8_inspector_protocol_BASE_STRING_ADAPTER_H)