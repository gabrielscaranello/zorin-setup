#! /bin/bash

PWD=$(pwd)
PACKAGES=$(cat "$PWD/nvidia-packages" | tr '\n' ' ')

echo "Configuring NVIDIA hybrid drivers..."

echo "Installing driver packages"
yay --noconfirm && -Sy --noconfirm $PACKAGES

echo "Enabling switcheroo-control.service..."
sudo systemctl enable switcheroo-control.service

echo "Change to nvidia driver usign envycontrol..."
sudo envycontrol -s nvidia

echo "NVIDIA hybrid drivers configured."
