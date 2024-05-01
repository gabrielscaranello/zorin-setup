#! /bin/bash

PWD=$(pwd)
TARGET_DIR="$HOME/.local"

echo "Copying plasma config..."

echo "Creating target directories..."
mkdir -p $TARGET_DIR/share/aurorae/themes
mkdir -p $TARGET_DIR/share/color-schemes
mkdir -p $TARGET_DIR/share/plasma/look-and-feel

echo "Copying plasma config..."
cp -r $PWD/plasma/local/share/aurorae/themes/CatppuccinMocha-Classic $TARGET_DIR/share/aurorae/themes
cp -r $PWD/plasma/local/share/color-schemes/CatppuccinMochaBlue.colors $TARGET_DIR/share/color-schemes
cp -r $PWD/plasma/local/share/plasma/look-and-feel/archsimpleblue $TARGET_DIR/share/plasma/look-and-feel

echo "Plasma config copied."
