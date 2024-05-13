#! /bin/bash

FILE_NAME="google-chrome-stable_current_amd64.deb"
OUTPUT_FILE="/tmp/$FILE_NAME"
DOWNLOAD_URL="https://dl.google.com/linux/direct/$FILE_NAME"

echo "Installing Google Chrome..."

echo "Removing old files if exists..."
rm -rf "$OUTPUT_FILE"

echo "Downloading..."
wget -c "$DOWNLOAD_URL" -O "$OUTPUT_FILE"

echo "Installing..."
sudo dpkg -i "$OUTPUT_FILE"

echo "Google Chrome installed..."
