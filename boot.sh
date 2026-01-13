
#!/usr/bin/env bash
set -e

cd /data/hytale/runtime/

java \
	--enable-native-access=ALL-UNNAMED \
	-jar /data/hytale/Server/HytaleServer.jar \
	--assets /data/hytale/Assets.zip
