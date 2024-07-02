#! /bin/bash

echo "Setting up GTK Theme..."

echo "Defining GTK Theme..."
gsettings set org.gnome.desktop.interface gtk-theme "ZorinBlue-Dark"
gsettings set org.gnome.desktop.wm.preferences theme "ZorinBlue-Dark"
dconf write /org/gnome/shell/extensions/user-theme/name "'ZorinBlue-Dark'"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

echo "GTK Theme setup done."
