# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := cctest
DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-DNODE_OPENSSL_CERT_STORE' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="freebsd"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DHAVE_OPENSSL=1' \
	'-DHAVE_INSPECTOR=1' \
	'-D__POSIX__' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_HAVE_I18N_SUPPORT=1' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	 \
	-I$(srcdir)/src \
	-I$(srcdir)/tools/msvs/genfiles \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include \
	-I$(srcdir)/deps/uvwasi/include \
	-I$(srcdir)/test/cctest \
	-I$(srcdir)/deps/histogram/src \
	-I$(srcdir)/deps/llhttp/include

DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-DNODE_OPENSSL_CERT_STORE' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="freebsd"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DHAVE_OPENSSL=1' \
	'-DHAVE_INSPECTOR=1' \
	'-D__POSIX__' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_HAVE_I18N_SUPPORT=1'

# Flags passed to all source files.
CFLAGS_Release := \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	 \
	-I$(srcdir)/src \
	-I$(srcdir)/tools/msvs/genfiles \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include \
	-I$(srcdir)/deps/uvwasi/include \
	-I$(srcdir)/test/cctest \
	-I$(srcdir)/deps/histogram/src \
	-I$(srcdir)/deps/llhttp/include

OBJS := \
	$(obj).target/$(TARGET)/src/node_snapshot_stub.o \
	$(obj).target/$(TARGET)/src/node_code_cache_stub.o \
	$(obj).target/$(TARGET)/test/cctest/gtest/gtest-all.o \
	$(obj).target/$(TARGET)/test/cctest/gtest/gtest_main.o \
	$(obj).target/$(TARGET)/test/cctest/node_test_fixture.o \
	$(obj).target/$(TARGET)/test/cctest/test_aliased_buffer.o \
	$(obj).target/$(TARGET)/test/cctest/test_base64.o \
	$(obj).target/$(TARGET)/test/cctest/test_base_object_ptr.o \
	$(obj).target/$(TARGET)/test/cctest/test_node_postmortem_metadata.o \
	$(obj).target/$(TARGET)/test/cctest/test_environment.o \
	$(obj).target/$(TARGET)/test/cctest/test_linked_binding.o \
	$(obj).target/$(TARGET)/test/cctest/test_per_process.o \
	$(obj).target/$(TARGET)/test/cctest/test_platform.o \
	$(obj).target/$(TARGET)/test/cctest/test_json_utils.o \
	$(obj).target/$(TARGET)/test/cctest/test_sockaddr.o \
	$(obj).target/$(TARGET)/test/cctest/test_traced_value.o \
	$(obj).target/$(TARGET)/test/cctest/test_util.o \
	$(obj).target/$(TARGET)/test/cctest/test_url.o \
	$(obj).target/$(TARGET)/test/cctest/test_node_crypto.o \
	$(obj).target/$(TARGET)/test/cctest/test_inspector_socket.o \
	$(obj).target/$(TARGET)/test/cctest/test_inspector_socket_server.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/libnode.a $(obj).target/deps/histogram/libhistogram.a $(obj).target/deps/uvwasi/libuvwasi.a $(obj).target/node_dtrace_header.stamp $(obj).target/node_dtrace_ustack.stamp $(obj).target/node_dtrace_provider.stamp $(obj).target/tools/v8_gypfiles/libv8_snapshot.a $(obj).target/tools/v8_gypfiles/libv8_libplatform.a $(obj).target/tools/icu/icui18n.stamp $(obj).target/tools/icu/icuuc.stamp $(obj).target/deps/llhttp/libllhttp.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/specialize_node_d.stamp $(obj).target/tools/v8_gypfiles/generate_bytecode_builtins_list.stamp $(obj).target/tools/v8_gypfiles/run_torque.stamp $(obj).target/tools/v8_gypfiles/v8_maybe_icu.stamp $(obj).target/tools/v8_gypfiles/libv8_base_without_compiler.a $(obj).target/tools/v8_gypfiles/cppgc_base.stamp $(obj).target/tools/v8_gypfiles/torque_generated_definitions.stamp $(obj).target/tools/v8_gypfiles/v8_headers.stamp $(obj).target/tools/v8_gypfiles/v8_version.stamp $(obj).target/tools/v8_gypfiles/libv8_libbase.a $(obj).target/tools/v8_gypfiles/libv8_libsampler.a $(obj).target/tools/v8_gypfiles/v8_shared_internal_headers.stamp $(obj).target/tools/v8_gypfiles/v8_cppgc_shared.stamp $(obj).target/tools/v8_gypfiles/libv8_zlib.a $(obj).target/tools/v8_gypfiles/run_gen-regexp-special-case.stamp $(obj).target/tools/v8_gypfiles/postmortem-metadata.stamp $(obj).target/tools/v8_gypfiles/v8_compiler_for_mksnapshot.stamp $(obj).target/tools/v8_gypfiles/libv8_compiler.a $(obj).target/tools/v8_gypfiles/libv8_initializers.a $(obj).target/tools/v8_gypfiles/torque_generated_initializers.stamp

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
	-Wl,--export-dynamic \
	-Wl,-z,noexecstack \
	-Wl,--whole-archive $(builddir)/obj.target/tools/v8_gypfiles/libv8_snapshot.a \
	-Wl,--no-whole-archive \
	-Wl,-z,relro \
	-Wl,-z,now \
	-pthread

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,--export-dynamic \
	-Wl,-z,noexecstack \
	-Wl,--whole-archive $(builddir)/obj.target/tools/v8_gypfiles/libv8_snapshot.a \
	-Wl,--no-whole-archive \
	-Wl,-z,relro \
	-Wl,-z,now \
	-pthread

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
	-lelf \
	-lutil \
	-lkvm \
	-lm \
	-L/usr/local/lib -lexecinfo

$(builddir)/cctest: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/cctest: LIBS := $(LIBS)
$(builddir)/cctest: LD_INPUTS := $(OBJS) $(obj).target/libnode.a $(obj).target/deps/histogram/libhistogram.a $(obj).target/deps/uvwasi/libuvwasi.a $(obj).target/tools/v8_gypfiles/libv8_snapshot.a $(obj).target/tools/v8_gypfiles/libv8_libplatform.a $(obj).target/deps/llhttp/libllhttp.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/tools/v8_gypfiles/libv8_base_without_compiler.a $(obj).target/tools/v8_gypfiles/libv8_libbase.a $(obj).target/tools/v8_gypfiles/libv8_libsampler.a $(obj).target/tools/v8_gypfiles/libv8_zlib.a $(obj).target/tools/v8_gypfiles/libv8_compiler.a $(obj).target/tools/v8_gypfiles/libv8_initializers.a
$(builddir)/cctest: TOOLSET := $(TOOLSET)
$(builddir)/cctest: $(OBJS) $(obj).target/libnode.a $(obj).target/deps/histogram/libhistogram.a $(obj).target/deps/uvwasi/libuvwasi.a $(obj).target/tools/v8_gypfiles/libv8_snapshot.a $(obj).target/tools/v8_gypfiles/libv8_libplatform.a $(obj).target/deps/llhttp/libllhttp.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/tools/v8_gypfiles/libv8_base_without_compiler.a $(obj).target/tools/v8_gypfiles/libv8_libbase.a $(obj).target/tools/v8_gypfiles/libv8_libsampler.a $(obj).target/tools/v8_gypfiles/libv8_zlib.a $(obj).target/tools/v8_gypfiles/libv8_compiler.a $(obj).target/tools/v8_gypfiles/libv8_initializers.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/cctest
# Add target alias
.PHONY: cctest
cctest: $(builddir)/cctest

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/cctest

