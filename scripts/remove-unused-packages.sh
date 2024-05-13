#! /bin/bash

PWD=$(pwd)
PACKAGES=$(cat "$PWD/unused-packages" | tr '\n' ' ')

. $PWD/scripts/_utils.sh

echo "Removing unused packages..."
install_nala
sudo nala update
sudo nala purge -y $PACKAGES
sudo nala autoremove
echo "Unused packages removed."
