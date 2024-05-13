#! /bin/bash

FILE_NAME="discord.deb"
OUTPUT_FILE="/tmp/$FILE_NAME"
DOWNLOAD_URL="https://discord.com/api/download?platform=linux&format=deb"

echo "Installing Discord..."

echo "Downloading..."
rm -rf "$OUTPUT_FILE"
wget -c "$DOWNLOAD_URL" -O "$OUTPUT_FILE"

echo "Installing..."
sudo dpkg -i "$OUTPUT_FILE"

echo "Discord installed..."
