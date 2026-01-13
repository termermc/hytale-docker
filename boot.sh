
#!/usr/bin/env bash
set -e

cp -r /data/hytale/Server/* /data/hytale/runtime/

cd /data/hytale/runtime/

java \
	--enable-native-access=ALL-UNNAMED \
	-jar HytaleServer.jar \
	--assets /data/hytale/Assets.zip
