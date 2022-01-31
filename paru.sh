#! /bin/sh

# Add base devel packages
sudo pacman -S --needed base-devel

# Run paru to install missign dependencies
paru

# install packages
paru -Sy \
chrome-gnome-shell \
gitflow-avh \
google-chrome \
papirus-folders \
ttf-ms-fonts \
visual-studio-code-bin \