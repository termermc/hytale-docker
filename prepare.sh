#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR"

mkdir -p prep
cd prep

if ! command -v unzip >/dev/null 2>&1; then
    echo "The 'unzip' utility is not installed or not in your PATH."
    echo "Please install it and run this script again."
    exit 1
fi

if [[ ! -f "./hytale-downloader-linux-amd64" ]]; then
    echo 'Grabbing downloader...'
    wget 'https://downloader.hytale.com/hytale-downloader.zip'
    unzip hytale-downloader
    rm hytale-downloader.zip
    rm QUICKSTART.md
    rm *.exe
fi

rm -rf ../assets
mkdir -p ../assets

echo 'Downloading... (you may be prompted to authenticate)'
./hytale-downloader-linux-amd64 -download-path ../assets/game.zip
cd ../assets
unzip game.zip
rm game.zip

echo 'Preparation complete.'
echo 'Run build.sh to build the Docker container.'
