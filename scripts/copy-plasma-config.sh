#! /bin/bash

PWD=$(pwd)
TARGET_DIR="$HOME/.local/"

echo "Copying plasma config..."

cp -r "$PWD/plasma/.local/*" "$TARGET_DIR"

echo "Plasma config copied."
