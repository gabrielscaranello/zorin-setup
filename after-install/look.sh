#! /bin/sh

# Install GTK Theme
git clone https://github.com/vinceliuice/Graphite-gtk-theme.git /tmp/graphite
/tmp/graphite/install.sh -l -c dark -t blue --tweaks nord rimless normal darker

# Install Icons Package
paru -Sy papirus-icon-theme papirus-folders-git

# Make settings
## GTK
gsettings set org.gnome.desktop.interface gtk-theme "Graphite-blue-Dark-nord"
gsettings set org.gnome.desktop.wm.preferences theme "Graphite-blue-Dark-nord"
mkdir -p ~/.config/gtk-4.0
rm -rf ~/.config/gtk-4.0/settings.ini

cat >> ~/.config/gtk-4.0/settings.ini << EOF
[Settings]
gtk-application-prefer-dark-theme=1
EOF

## Wallpaper and icons
### Icons
papirus-folders -C adwaita
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

### Wallpaper
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/archlinux/awesome.png"
gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/archlinux/awesome.png"

# Flatpak GTK setup
sudo flatpak override --filesystem=xdg-config/gtk-4.0
sudo flatpak override --filesystem=host
stylepak install-system
stylepak install-user