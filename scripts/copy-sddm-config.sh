#! /bin/bash

PWD=$(pwd)

echo "Copying SDDM config..."

sudo mkdir -p /usr/share/sddm/themes/breeze
sudo mkdir -p /etc/sddm.conf.d

sudo cp "$PWD/sddm/themes/breeze/theme.conf.user" /usr/share/sddm/themes/breeze/theme.conf.user
sudo cp "$PWD/sddm/themes/breeze/theme.conf" /usr/share/sddm/themes/breeze/theme.conf
sudo cp "$PWD/sddm/sddm.config.d/kde_settings.conf" /etc/sddm.conf.d/kde_settings.conf

echo "SDDM config copied."
