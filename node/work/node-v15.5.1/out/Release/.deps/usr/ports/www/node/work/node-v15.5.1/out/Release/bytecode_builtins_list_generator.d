cmd_/usr/ports/www/node/work/node-v15.5.1/out/Release/bytecode_builtins_list_generator := c++ -o /usr/ports/www/node/work/node-v15.5.1/out/Release/bytecode_builtins_list_generator -pthread -rdynamic -m64 -Wl,--export-dynamic   -fstack-protector-strong  -Wl,--start-group /usr/ports/www/node/work/node-v15.5.1/out/Release/obj.target/bytecode_builtins_list_generator/deps/v8/src/builtins/generate-bytecodes-builtins-list.o /usr/ports/www/node/work/node-v15.5.1/out/Release/obj.target/bytecode_builtins_list_generator/deps/v8/src/interpreter/bytecode-operands.o /usr/ports/www/node/work/node-v15.5.1/out/Release/obj.target/bytecode_builtins_list_generator/deps/v8/src/interpreter/bytecodes.o /usr/ports/www/node/work/node-v15.5.1/out/Release/obj.target/tools/v8_gypfiles/libv8_libbase.a -lz -L/usr/local/lib -luv -lbrotlidec -lbrotlienc -lnghttp2 -lcrypto -lssl -licui18n -licuuc -licudata -lelf -L/usr/local/lib -lexecinfo -Wl,--end-group
