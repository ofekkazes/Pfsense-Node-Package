cmd_/usr/ports/www/node/work/node-v15.5.1/out/Release/obj/gen/v8_inspector_protocol_json.h := LD_LIBRARY_PATH=/usr/ports/www/node/work/node-v15.5.1/out/Release/lib.host:/usr/ports/www/node/work/node-v15.5.1/out/Release/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd ../.; mkdir -p /usr/ports/www/node/work/node-v15.5.1/out/Release/obj/gen; python tools/compress_json.py "/usr/ports/www/node/work/node-v15.5.1/out/Release/obj/gen/concatenated_protocol.json" "/usr/ports/www/node/work/node-v15.5.1/out/Release/obj/gen/v8_inspector_protocol_json.h"