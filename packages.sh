#! /bin/sh

sudo pacman -Sy tilix zsh ttf-liberation ttf-roboto ttf-roboto-mono firefox \
transmission-gtk file-roller totem gst-libav gst-plugins-good \
gnome-calculator gnome-calendar nodejs npm yarn php-fpm composer php-gd php-redis \
php-pgsql gnome-tweaks gnome-system-monitor papirus-icon-theme gnome-characters \
ttf-joypixels xdg-utils docker docker-compose gnome-icon-theme-extras gnome-themes-extra \
python-nautilus gnome-font-viewer wget flameshot flatpak pavucontrol gamemode \
xdg-user-dirs noto-fonts ttf-hannom ttf-baekmuk gnome-software-packagekit-plugin baobab \
evince gnome-disk-utility gnome-color-manager gnome-contacts gnome-menus cups \
gnome-shell-extensions gvfs gvfs-afc gvfs-goa gvfs-google gvfs-mtp gvfs-nfs gvfs-smb \
sushi tracker tracker-miners tracker3 tracker3-miners xdg-user-dirs-gtk gdm zsh-completions
gnome-backgrounds


# enable cups
sudo systemctl enable cups.service

# enable gdm
sudo systemctl enable gdm