#! /bin/sh

# set default tilix as terminal
gsettings set org.gnome.desktop.default-applications.terminal exec 'tilix'

# set default file manager
xdg-mime default org.gnome.Nautilus.desktop inode/directory

