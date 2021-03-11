#ifndef V8_GEN_TORQUE_GENERATED_______DEPS_V8_SRC_OBJECTS_INTL_OBJECTS_TQ_H_
#define V8_GEN_TORQUE_GENERATED_______DEPS_V8_SRC_OBJECTS_INTL_OBJECTS_TQ_H_

#include "src/builtins/torque-csa-header-includes.h"

namespace v8 {
namespace internal {

TNode<JSDateTimeFormat> Cast_JSDateTimeFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSDisplayNames> Cast_JSDisplayNames_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSListFormat> Cast_JSListFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSNumberFormat> Cast_JSNumberFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSPluralRules> Cast_JSPluralRules_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSRelativeTimeFormat> Cast_JSRelativeTimeFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSLocale> Cast_JSLocale_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSSegmenter> Cast_JSSegmenter_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSSegments> Cast_JSSegments_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSSegmentIterator> Cast_JSSegmentIterator_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSV8BreakIterator> Cast_JSV8BreakIterator_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSCollator> Cast_JSCollator_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_obj, compiler::CodeAssemblerLabel* label_CastError);
TNode<String> LoadJSDateTimeFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o);
void StoreJSDateTimeFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o, TNode<String> p_v);
TNode<Foreign> LoadJSDateTimeFormatIcuLocale_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o);
void StoreJSDateTimeFormatIcuLocale_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o, TNode<Foreign> p_v);
TNode<Foreign> LoadJSDateTimeFormatIcuSimpleDateFormat_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o);
void StoreJSDateTimeFormatIcuSimpleDateFormat_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o, TNode<Foreign> p_v);
TNode<Foreign> LoadJSDateTimeFormatIcuDateIntervalFormat_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o);
void StoreJSDateTimeFormatIcuDateIntervalFormat_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o, TNode<Foreign> p_v);
TNode<HeapObject> LoadJSDateTimeFormatBoundFormat_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o);
void StoreJSDateTimeFormatBoundFormat_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o, TNode<HeapObject> p_v);
TNode<Smi> LoadJSDateTimeFormatFlags_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o);
void StoreJSDateTimeFormatFlags_0(compiler::CodeAssemblerState* state_, TNode<JSDateTimeFormat> p_o, TNode<Smi> p_v);
TNode<Foreign> LoadJSDisplayNamesInternal_0(compiler::CodeAssemblerState* state_, TNode<JSDisplayNames> p_o);
void StoreJSDisplayNamesInternal_0(compiler::CodeAssemblerState* state_, TNode<JSDisplayNames> p_o, TNode<Foreign> p_v);
TNode<Smi> LoadJSDisplayNamesFlags_0(compiler::CodeAssemblerState* state_, TNode<JSDisplayNames> p_o);
void StoreJSDisplayNamesFlags_0(compiler::CodeAssemblerState* state_, TNode<JSDisplayNames> p_o, TNode<Smi> p_v);
TNode<String> LoadJSListFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSListFormat> p_o);
void StoreJSListFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSListFormat> p_o, TNode<String> p_v);
TNode<Foreign> LoadJSListFormatIcuFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSListFormat> p_o);
void StoreJSListFormatIcuFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSListFormat> p_o, TNode<Foreign> p_v);
TNode<Smi> LoadJSListFormatFlags_0(compiler::CodeAssemblerState* state_, TNode<JSListFormat> p_o);
void StoreJSListFormatFlags_0(compiler::CodeAssemblerState* state_, TNode<JSListFormat> p_o, TNode<Smi> p_v);
TNode<String> LoadJSNumberFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSNumberFormat> p_o);
void StoreJSNumberFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSNumberFormat> p_o, TNode<String> p_v);
TNode<Foreign> LoadJSNumberFormatIcuNumberFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSNumberFormat> p_o);
void StoreJSNumberFormatIcuNumberFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSNumberFormat> p_o, TNode<Foreign> p_v);
TNode<HeapObject> LoadJSNumberFormatBoundFormat_0(compiler::CodeAssemblerState* state_, TNode<JSNumberFormat> p_o);
void StoreJSNumberFormatBoundFormat_0(compiler::CodeAssemblerState* state_, TNode<JSNumberFormat> p_o, TNode<HeapObject> p_v);
TNode<String> LoadJSPluralRulesLocale_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o);
void StoreJSPluralRulesLocale_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o, TNode<String> p_v);
TNode<Smi> LoadJSPluralRulesFlags_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o);
void StoreJSPluralRulesFlags_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o, TNode<Smi> p_v);
TNode<Foreign> LoadJSPluralRulesIcuPluralRules_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o);
void StoreJSPluralRulesIcuPluralRules_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o, TNode<Foreign> p_v);
TNode<Foreign> LoadJSPluralRulesIcuNumberFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o);
void StoreJSPluralRulesIcuNumberFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSPluralRules> p_o, TNode<Foreign> p_v);
TNode<String> LoadJSRelativeTimeFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o);
void StoreJSRelativeTimeFormatLocale_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o, TNode<String> p_v);
TNode<String> LoadJSRelativeTimeFormatNumberingSystem_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o);
void StoreJSRelativeTimeFormatNumberingSystem_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o, TNode<String> p_v);
TNode<Foreign> LoadJSRelativeTimeFormatIcuFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o);
void StoreJSRelativeTimeFormatIcuFormatter_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o, TNode<Foreign> p_v);
TNode<Smi> LoadJSRelativeTimeFormatFlags_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o);
void StoreJSRelativeTimeFormatFlags_0(compiler::CodeAssemblerState* state_, TNode<JSRelativeTimeFormat> p_o, TNode<Smi> p_v);
TNode<Foreign> LoadJSLocaleIcuLocale_0(compiler::CodeAssemblerState* state_, TNode<JSLocale> p_o);
void StoreJSLocaleIcuLocale_0(compiler::CodeAssemblerState* state_, TNode<JSLocale> p_o, TNode<Foreign> p_v);
TNode<String> LoadJSSegmenterLocale_0(compiler::CodeAssemblerState* state_, TNode<JSSegmenter> p_o);
void StoreJSSegmenterLocale_0(compiler::CodeAssemblerState* state_, TNode<JSSegmenter> p_o, TNode<String> p_v);
TNode<Foreign> LoadJSSegmenterIcuBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSSegmenter> p_o);
void StoreJSSegmenterIcuBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSSegmenter> p_o, TNode<Foreign> p_v);
TNode<Smi> LoadJSSegmenterFlags_0(compiler::CodeAssemblerState* state_, TNode<JSSegmenter> p_o);
void StoreJSSegmenterFlags_0(compiler::CodeAssemblerState* state_, TNode<JSSegmenter> p_o, TNode<Smi> p_v);
TNode<Foreign> LoadJSSegmentsIcuBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSSegments> p_o);
void StoreJSSegmentsIcuBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSSegments> p_o, TNode<Foreign> p_v);
TNode<Foreign> LoadJSSegmentsUnicodeString_0(compiler::CodeAssemblerState* state_, TNode<JSSegments> p_o);
void StoreJSSegmentsUnicodeString_0(compiler::CodeAssemblerState* state_, TNode<JSSegments> p_o, TNode<Foreign> p_v);
TNode<Smi> LoadJSSegmentsFlags_0(compiler::CodeAssemblerState* state_, TNode<JSSegments> p_o);
void StoreJSSegmentsFlags_0(compiler::CodeAssemblerState* state_, TNode<JSSegments> p_o, TNode<Smi> p_v);
TNode<Foreign> LoadJSSegmentIteratorIcuBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSSegmentIterator> p_o);
void StoreJSSegmentIteratorIcuBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSSegmentIterator> p_o, TNode<Foreign> p_v);
TNode<Smi> LoadJSSegmentIteratorFlags_0(compiler::CodeAssemblerState* state_, TNode<JSSegmentIterator> p_o);
void StoreJSSegmentIteratorFlags_0(compiler::CodeAssemblerState* state_, TNode<JSSegmentIterator> p_o, TNode<Smi> p_v);
TNode<String> LoadJSV8BreakIteratorLocale_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorLocale_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<String> p_v);
TNode<Foreign> LoadJSV8BreakIteratorBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorBreakIterator_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<Foreign> p_v);
TNode<Foreign> LoadJSV8BreakIteratorUnicodeString_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorUnicodeString_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<Foreign> p_v);
TNode<HeapObject> LoadJSV8BreakIteratorBoundAdoptText_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorBoundAdoptText_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<HeapObject> p_v);
TNode<HeapObject> LoadJSV8BreakIteratorBoundFirst_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorBoundFirst_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<HeapObject> p_v);
TNode<HeapObject> LoadJSV8BreakIteratorBoundNext_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorBoundNext_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<HeapObject> p_v);
TNode<HeapObject> LoadJSV8BreakIteratorBoundCurrent_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorBoundCurrent_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<HeapObject> p_v);
TNode<HeapObject> LoadJSV8BreakIteratorBoundBreakType_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o);
void StoreJSV8BreakIteratorBoundBreakType_0(compiler::CodeAssemblerState* state_, TNode<JSV8BreakIterator> p_o, TNode<HeapObject> p_v);
TNode<Foreign> LoadJSCollatorIcuCollator_0(compiler::CodeAssemblerState* state_, TNode<JSCollator> p_o);
void StoreJSCollatorIcuCollator_0(compiler::CodeAssemblerState* state_, TNode<JSCollator> p_o, TNode<Foreign> p_v);
TNode<HeapObject> LoadJSCollatorBoundCompare_0(compiler::CodeAssemblerState* state_, TNode<JSCollator> p_o);
void StoreJSCollatorBoundCompare_0(compiler::CodeAssemblerState* state_, TNode<JSCollator> p_o, TNode<HeapObject> p_v);
TNode<JSDateTimeFormat> DownCastForTorqueClass_JSDateTimeFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSDisplayNames> DownCastForTorqueClass_JSDisplayNames_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSListFormat> DownCastForTorqueClass_JSListFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSNumberFormat> DownCastForTorqueClass_JSNumberFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSPluralRules> DownCastForTorqueClass_JSPluralRules_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSRelativeTimeFormat> DownCastForTorqueClass_JSRelativeTimeFormat_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSLocale> DownCastForTorqueClass_JSLocale_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSSegmenter> DownCastForTorqueClass_JSSegmenter_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSSegments> DownCastForTorqueClass_JSSegments_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSSegmentIterator> DownCastForTorqueClass_JSSegmentIterator_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSV8BreakIterator> DownCastForTorqueClass_JSV8BreakIterator_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
TNode<JSCollator> DownCastForTorqueClass_JSCollator_0(compiler::CodeAssemblerState* state_, TNode<HeapObject> p_o, compiler::CodeAssemblerLabel* label_CastError);
}  // namespace internal
}  // namespace v8

#endif  // V8_GEN_TORQUE_GENERATED_______DEPS_V8_SRC_OBJECTS_INTL_OBJECTS_TQ_H_
