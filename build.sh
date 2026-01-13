#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR"

docker build -t ghcr.io/termermc/hytale-server:latest .
