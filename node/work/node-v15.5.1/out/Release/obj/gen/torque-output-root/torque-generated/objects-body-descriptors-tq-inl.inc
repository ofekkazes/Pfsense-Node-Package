class FixedArray::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return FixedArray::cast(raw_object).AllocatedSize();
  }

};
class WeakFixedArray::BodyDescriptor final : public SuffixRangeWeakBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return WeakFixedArray::cast(raw_object).AllocatedSize();
  }

};
class SloppyArgumentsElements::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return SloppyArgumentsElements::cast(raw_object).AllocatedSize();
  }

};
class WeakArrayList::BodyDescriptor final : public SuffixRangeWeakBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return WeakArrayList::cast(raw_object).AllocatedSize();
  }

};
class OnHeapBasicBlockProfilerData::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 56;
  }

};
class ConsString::BodyDescriptor final : public SuffixRangeBodyDescriptor<16> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 32;
  }

};
class SeqOneByteString::BodyDescriptor final : public DataOnlyBodyDescriptor {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return SeqOneByteString::cast(raw_object).AllocatedSize();
  }

};
class SeqTwoByteString::BodyDescriptor final : public DataOnlyBodyDescriptor {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return SeqTwoByteString::cast(raw_object).AllocatedSize();
  }

};
class SlicedString::BodyDescriptor final : public SuffixRangeBodyDescriptor<16> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 32;
  }

};
class ThinString::BodyDescriptor final : public SuffixRangeBodyDescriptor<16> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 24;
  }

};
class InternalClass::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 24;
  }

};
class SmiPair::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 24;
  }

};
class SmiBox::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 24;
  }

};
class ExportedSubClassBase::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 24;
  }

};
class ExportedSubClass::BodyDescriptor final : public BodyDescriptorBase {
 public:
  static bool IsValidSlot(Map map, HeapObject obj, int offset) {
      bool valid_slots[] = {1,1,1,0,1,};
      return valid_slots[static_cast<unsigned int>(offset)/kTaggedSize];
  }

  template <typename ObjectVisitor>
  static inline void IterateBody(Map map, HeapObject obj, int object_size, ObjectVisitor* v) {
    IteratePointers(obj, 8, 24, v);
    IteratePointer(obj, 32, v);
  }

  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 40;
  }

};
class AbstractInternalClassSubclass1::BodyDescriptor final : public DataOnlyBodyDescriptor {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 8;
  }

};
class AbstractInternalClassSubclass2::BodyDescriptor final : public DataOnlyBodyDescriptor {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 8;
  }

};
class InternalClassWithSmiElements::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return InternalClassWithSmiElements::cast(raw_object).AllocatedSize();
  }

};
class InternalClassWithStructElements::BodyDescriptor final : public SuffixRangeBodyDescriptor<16> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return InternalClassWithStructElements::cast(raw_object).AllocatedSize();
  }

};
class ExportedSubClass2::BodyDescriptor final : public BodyDescriptorBase {
 public:
  static bool IsValidSlot(Map map, HeapObject obj, int offset) {
      bool valid_slots[] = {1,1,1,0,1,};
      return valid_slots[static_cast<unsigned int>(offset)/kTaggedSize];
  }

  template <typename ObjectVisitor>
  static inline void IterateBody(Map map, HeapObject obj, int object_size, ObjectVisitor* v) {
    IteratePointers(obj, 8, 24, v);
    IteratePointer(obj, 32, v);
  }

  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 40;
  }

};
class SortState::BodyDescriptor final : public SuffixRangeBodyDescriptor<8> {
 public:
  static inline int SizeOf(Map map, HeapObject raw_object) {
    return 136;
  }

};
