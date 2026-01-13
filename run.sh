#!/usr/bin/env bash

docker run -it \
	-v ./runtime:/data/hytale/runtime \
	-p 5520:5520/udp \
	ghcr.io/termermc/hytale-server:latest
