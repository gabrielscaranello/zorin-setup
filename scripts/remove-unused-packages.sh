#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"${PWD}/unused-packages")

echo "Removing unused packages..."
sudo apt update
echo "$PACKAGES" | xargs sudo apt purge -y
sudo apt autoremove --purge -y

echo "Removing unused repositories..."
sudo rm -rf /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

echo "Unused packages removed."
