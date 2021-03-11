# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := v8_compiler_opt
DEFS_Debug := \
	'-DNODE_OPENSSL_CERT_STORE' \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DV8_TARGET_ARCH_X64' \
	'-DV8_EMBEDDER_STRING="-node.23"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DENABLE_MINOR_MC' \
	'-DOBJECT_PRINT' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_CONCURRENT_MARKING' \
	'-DV8_ENABLE_LAZY_SOURCE_POSITIONS' \
	'-DV8_USE_SIPHASH' \
	'-DDISABLE_UNTRUSTED_CODE_MITIGATIONS' \
	'-DV8_WIN64_UNWINDING_INFO' \
	'-DV8_ENABLE_REGEXP_INTERPRETER_THREADED_DISPATCH' \
	'-DV8_SNAPSHOT_COMPRESSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS' \
	'-DVERIFY_HEAP' \
	'-DV8_TRACE_MAPS' \
	'-DV8_ENABLE_ALLOCATION_TIMEOUT' \
	'-DV8_ENABLE_FORCE_SLOW_PATH' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wno-unused-parameter \
	-m64 \
	-Wno-return-type \
	-fno-strict-aliasing \
	 \
	-g \
	-Woverloaded-virtual \
	 \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	 \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/deps/v8/include \
	-I$(obj)/gen/generate-bytecode-output-root \
	-I$(obj)/gen/torque-output-root

DEFS_Release := \
	'-DNODE_OPENSSL_CERT_STORE' \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DV8_TARGET_ARCH_X64' \
	'-DV8_EMBEDDER_STRING="-node.23"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DENABLE_MINOR_MC' \
	'-DOBJECT_PRINT' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_CONCURRENT_MARKING' \
	'-DV8_ENABLE_LAZY_SOURCE_POSITIONS' \
	'-DV8_USE_SIPHASH' \
	'-DDISABLE_UNTRUSTED_CODE_MITIGATIONS' \
	'-DV8_WIN64_UNWINDING_INFO' \
	'-DV8_ENABLE_REGEXP_INTERPRETER_THREADED_DISPATCH' \
	'-DV8_SNAPSHOT_COMPRESSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wno-unused-parameter \
	-m64 \
	-Wno-return-type \
	-fno-strict-aliasing \
	 \
	-O3 \
	-fno-omit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	 \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	 \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/deps/v8/include \
	-I$(obj)/gen/generate-bytecode-output-root \
	-I$(obj)/gen/torque-output-root

OBJS := \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/access-builder.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/access-info.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/add-type-assertions-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/all-nodes.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/code-generator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/frame-elider.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/gap-resolver.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/instruction-scheduler.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/instruction-selector.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/instruction.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/jump-threading.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/live-range-separator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/mid-tier-register-allocator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/move-optimizer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/register-allocator-verifier.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/register-allocator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/backend/spill-placer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/basic-block-instrumentor.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/branch-elimination.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/bytecode-analysis.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/bytecode-graph-builder.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/bytecode-liveness-map.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/c-linkage.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/checkpoint-elimination.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/code-assembler.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/common-node-cache.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/common-operator-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/common-operator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/compilation-dependencies.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/compiler-source-position-table.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/constant-folding-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/control-equivalence.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/control-flow-optimizer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/csa-load-elimination.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/dead-code-elimination.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/decompression-optimizer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/effect-control-linearizer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/escape-analysis-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/escape-analysis.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/feedback-source.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/frame-states.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/frame.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/graph-assembler.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/graph-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/graph-trimmer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/graph-visualizer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/graph.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/int64-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-call-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-context-specialization.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-create-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-generic-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-graph.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-heap-broker.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-heap-copy-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-inlining-heuristic.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-inlining.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-intrinsic-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-native-context-specialization.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-operator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-type-hint-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/js-typed-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/linkage.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/load-elimination.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/loop-analysis.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/loop-peeling.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/loop-variable-optimizer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/machine-graph-verifier.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/machine-graph.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/machine-operator-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/machine-operator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/map-inference.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/memory-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/memory-optimizer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/node-marker.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/node-matchers.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/node-origin-table.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/node-properties.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/node.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/opcodes.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/operation-typer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/operator-properties.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/operator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/osr.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/pipeline-statistics.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/pipeline.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/property-access-builder.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/raw-machine-assembler.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/redundancy-elimination.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/refs-map.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/representation-change.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/schedule.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/scheduled-machine-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/scheduler.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/select-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/serializer-for-background-compilation.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/simd-scalar-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/simplified-lowering.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/simplified-operator-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/simplified-operator.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/state-values-utils.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/store-store-elimination.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/type-cache.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/type-narrowing-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/typed-optimization.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/typer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/types.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/value-numbering-reducer.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/verifier.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/wasm-compiler.o \
	$(obj).target/$(TARGET)/deps/v8/src/compiler/zone-stats.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/tools/v8_gypfiles/generate_bytecode_builtins_list.stamp $(obj).target/tools/v8_gypfiles/run_torque.stamp $(obj).target/tools/v8_gypfiles/v8_maybe_icu.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,--export-dynamic

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,--export-dynamic

LIBS := \
	-lz \
	-L/usr/local/lib \
	-luv \
	-lbrotlidec \
	-lbrotlienc \
	-lnghttp2 \
	-lcrypto \
	-lssl \
	-licui18n \
	-licuuc \
	-licudata \
	-lelf

$(obj).target/tools/v8_gypfiles/libv8_compiler_opt.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/tools/v8_gypfiles/libv8_compiler_opt.a: LIBS := $(LIBS)
$(obj).target/tools/v8_gypfiles/libv8_compiler_opt.a: TOOLSET := $(TOOLSET)
$(obj).target/tools/v8_gypfiles/libv8_compiler_opt.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/tools/v8_gypfiles/libv8_compiler_opt.a
# Add target alias
.PHONY: v8_compiler_opt
v8_compiler_opt: $(obj).target/tools/v8_gypfiles/libv8_compiler_opt.a

