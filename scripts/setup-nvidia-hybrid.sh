#! /bin/bash

PWD=$(pwd)
PACKAGES=$(cat "$PWD/nvidia-packages" | tr '\n' ' ')

echo "Configuring NVIDIA hybrid drivers..."

echo "Installing driver packages"
yay --noconfirm && yay -Sy --noconfirm $PACKAGES

echo "Enabling services..."
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-powerd.service
sudo systemctl enable nvidia-resume.service
sudo systemctl enable switcheroo-control.service

echo "Change to nvidia driver usign envycontrol..."
sudo envycontrol --dm sddm -s hybrid

echo "NVIDIA hybrid drivers configured."
