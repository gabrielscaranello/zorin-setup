#! /bin/bash

PWD=$(pwd)
PACKAGES=$(cat "$PWD/pacman-packages" | tr '\n' ' ')

echo "Installing pacman packages..."
sudo pacman -Suuy --noconfirm
sudo pacman -Sy --noconfirm $PACKAGES
echo "pacman packages installed."
