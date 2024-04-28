#! /bin/bash

PWD=$(pwd)
PACKAGES=$(cat "$PWD/aur-packages" | tr '\n' ' ')

echo "Installing yay packages..."
yay -Sy --noconfirm $PACKAGES
echo "yay packages installed."
