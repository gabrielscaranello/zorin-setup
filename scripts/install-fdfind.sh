#! /bin/bash

LAST_VERSION=$(curl -s https://api.github.com/repos/sharkdp/fd/releases/latest | grep -Po '"tag_name": "v\K[^"]*')
FILE_NAME="fd_${LAST_VERSION}_amd64.deb"
OUTPUT_FILE="/tmp/$FILE_NAME"
DOWNLOAD_URL="https://github.com/sharkdp/fd/releases/download/v$LAST_VERSION/$FILE_NAME"

echo "Installing fd-find..."

echo "Removing old files if exists..."
rm -rf "$OUTPUT_FILE"

echo "Downloading..."
wget -c "$DOWNLOAD_URL" -O "$OUTPUT_FILE"

echo "Installing..."
sudo dpkg -i "$OUTPUT_FILE"

echo "fd-find installed..."
