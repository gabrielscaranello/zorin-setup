#! /bin/bash

PWD=$(pwd)

echo "Installing all setup..."

bash $PWD/scripts/install-pacman-packages.sh
bash $PWD/scripts/install-yay.sh
bash $PWD/scripts/install-aur-packages.sh
bash $PWD/scripts/install-nvm.sh
bash $PWD/scripts/hide-desktop-apps.sh
bash $PWD/scripts/setup-swap.sh
bash $PWD/scripts/enable-services.sh

echo "Installation is completed!"
