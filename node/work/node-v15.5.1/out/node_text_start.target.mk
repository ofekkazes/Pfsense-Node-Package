# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node_text_start
DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-DNODE_OPENSSL_CERT_STORE' \
	'-D__STDC_FORMAT_MACROS' \
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
	

DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-DNODE_OPENSSL_CERT_STORE' \
	'-D__STDC_FORMAT_MACROS'

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
	

OBJS := \
	$(obj).target/$(TARGET)/src/large_pages/node_text_start.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.S FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.S FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.S FORCE_DO_CMD
	@$(call do_cmd,cc,1)

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

$(obj).target/libnode_text_start.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libnode_text_start.a: LIBS := $(LIBS)
$(obj).target/libnode_text_start.a: TOOLSET := $(TOOLSET)
$(obj).target/libnode_text_start.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/libnode_text_start.a
# Add target alias
.PHONY: node_text_start
node_text_start: $(obj).target/libnode_text_start.a

# Add target alias to "all" target.
.PHONY: all
all: node_text_start

