#! /bin/bash

LAST_VERSION=$(curl -s https://api.github.com/repos/ClementTsang/bottom/releases/latest | grep -Po '"tag_name": "\K[^"]*')
FILE_NAME="bottom-musl_${LAST_VERSION}-1_amd64.deb"
OUTPUT_FILE="/tmp/$FILE_NAME"
DOWNLOAD_URL="https://github.com/ClementTsang/bottom/releases/download/$LAST_VERSION/$FILE_NAME"

echo "Installing bottom..."

echo "Removing old files if exists..."
rm -rf "$OUTPUT_FILE"

echo "Downloading..."
wget -c "$DOWNLOAD_URL" -O "$OUTPUT_FILE"

echo "Installing..."
sudo dpkg -i "$OUTPUT_FILE"

echo "bottom installed..."
