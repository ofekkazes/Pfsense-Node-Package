# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node_dtrace_ustack
### Rules for action "node_dtrace_ustack_constants":
quiet_cmd__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_constants = ACTION _usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_constants $@
cmd__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_constants = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(obj)/gen; tools/genv8constants.py "$(obj)/gen/v8constants.h" "$(builddir)/obj.target/tools/v8_gypfiles/libv8_base_without_compiler.a"

$(obj)/gen/v8constants.h: obj := $(abs_obj)
$(obj)/gen/v8constants.h: builddir := $(abs_builddir)
$(obj)/gen/v8constants.h: TOOLSET := $(TOOLSET)
$(obj)/gen/v8constants.h: $(builddir)/obj.target/tools/v8_gypfiles/libv8_base_without_compiler.a FORCE_DO_CMD
	$(call do_cmd,_usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_constants)

all_deps += $(obj)/gen/v8constants.h
action__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_constants_outputs := $(obj)/gen/v8constants.h

### Rules for action "node_dtrace_ustack":
quiet_cmd__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack = ACTION _usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack $@
cmd__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(builddir)/obj.target/libnode/src; dtrace -64 "-I$(obj)/gen" -Isrc -C -G -s src/v8ustack.d -o "$(builddir)/obj.target/libnode/src/node_dtrace_ustack.o"

$(builddir)/obj.target/libnode/src/node_dtrace_ustack.o: obj := $(abs_obj)
$(builddir)/obj.target/libnode/src/node_dtrace_ustack.o: builddir := $(abs_builddir)
$(builddir)/obj.target/libnode/src/node_dtrace_ustack.o: TOOLSET := $(TOOLSET)
$(builddir)/obj.target/libnode/src/node_dtrace_ustack.o: $(srcdir)/src/v8ustack.d $(obj)/gen/v8constants.h FORCE_DO_CMD
	$(call do_cmd,_usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack)

all_deps += $(builddir)/obj.target/libnode/src/node_dtrace_ustack.o
action__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_outputs := $(builddir)/obj.target/libnode/src/node_dtrace_ustack.o


### Rules for final target.
# Build our special outputs first.
$(obj).target/node_dtrace_ustack.stamp: | $(action__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_constants_outputs) $(action__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_outputs)

# Preserve order dependency of special output on deps.
$(action__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_constants_outputs) $(action__usr_ports_www_node_work_node_v15_5_1_node_gyp_node_dtrace_ustack_target_node_dtrace_ustack_outputs): | 

$(obj).target/node_dtrace_ustack.stamp: TOOLSET := $(TOOLSET)
$(obj).target/node_dtrace_ustack.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/node_dtrace_ustack.stamp
# Add target alias
.PHONY: node_dtrace_ustack
node_dtrace_ustack: $(obj).target/node_dtrace_ustack.stamp

# Add target alias to "all" target.
.PHONY: all
all: node_dtrace_ustack

