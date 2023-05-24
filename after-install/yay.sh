#! /bin/sh

# Add base devel packages
sudo pacman -S --needed --noconfirm git base-devel

# Cloning Yay
git clone https://aur.archlinux.org/yay.git /tmp/yay

# Building Yay
cd /tmp/yay
makepkg -si

# Generate a development package database for *-git packages that were installed without yay
yay -Y --gendb

# install packages
yay -Sy --noconfirm \
    crycord \
    gitflow-avh \
    lazydocker \
    pix \
    ttf-ms-fonts
 
