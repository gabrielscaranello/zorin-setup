#! /bin/sh

# Install GTK Theme
git clone https://github.com/vinceliuice/Orchis-theme.git /tmp/orchis
/tmp/orchis/install.sh -t default -c dark -s standard -l --tweaks compact black primary macos

# Install Icons Package
paru -Sy papirus-icon-theme papirus-folders-git bibata-cursor-theme-bin

# Make settings
## GTK
gsettings set org.gnome.desktop.interface gtk-theme "Orchis-Dark"
gsettings set org.gnome.desktop.wm.preferences theme "Orchis-Dark"
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
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'
gsettings set org.gnome.desktop.interface cursor-size 20

### Wallpaper
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/archlinux/gritty.png"
gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/archlinux/gritty.png"

# Flatpak GTK setup
sudo flatpak override --filesystem=xdg-config/gtk-4.0
sudo flatpak override --filesystem=host
stylepak install-system
stylepak install-user