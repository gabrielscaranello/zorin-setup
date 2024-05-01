#! /bin/bash

echo "Enabling os-prober..."

echo "Installing os-prober package..."
sudo pacman -S --noconfirm os-prober

echo "Enabling os-prober..."
sudo sed -i 's/#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=false/g' /etc/default/grub

echo "Updating grub..."
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "OS-Prober enabled."
