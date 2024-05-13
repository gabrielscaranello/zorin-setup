#! /bin/bash

PWD=$(pwd)
LAST_VERSION=$(curl -s https://api.github.com/repos/telegramdesktop/tdesktop/releases/latest | grep -Po '"tag_name": "v\K[^"]*')
FILE_NAME="tsetup.$LAST_VERSION.tar.xz"
OUTPUT_DIR="/tmp/$FILE_NAME"
DOWNLOAD_URL="https://github.com/telegramdesktop/tdesktop/releases/download/v$LAST_VERSION/$FILE_NAME"
EXTRACT_DIR="/tmp/Telegram"
OPT_DIR="$HOME/.local/opt"
TARGET_DIR="$OPT_DIR/telegram-desktop"

echo "Installing Telegram..."

echo "Removing old files if exists..."
rm -rf "$OUTPUT_DIR" "$TARGET_DIR" $EXTRACT_DIR

echo "Downloading..."
wget -c "$DOWNLOAD_URL" -O "$OUTPUT_DIR"

echo "Installing..."
mkdir -p "$OPT_DIR"
tar -xf "$OUTPUT_DIR" -C /tmp
mv $EXTRACT_DIR "$TARGET_DIR"

echo "Telegram installed into $TARGET_DIR."
