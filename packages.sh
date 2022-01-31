#! /bin/sh

# Recommend enable multilib mirror
# edit /etc/pacman.conf file
# Search for #[multilib] and #Include = /etc/pacman.d/mirrorlist. And uncomment these lines 

sudo pacman -Sy \
baobab \
composer \
cups \
docker \
docker-compose \
evince \
file-roller \
firefox \
flameshot \
flatpak \
gamemode \
gdm \
gnome-backgrounds \
gnome-calculator \
gnome-calendar \
gnome-characters \
gnome-color-manager \
gnome-contacts \
gnome-disk-utility \
gnome-font-viewer \
gnome-icon-theme-extras \
gnome-keyring \
gnome-menus \
gnome-shell-extensions \
gnome-software-packagekit-plugin \
gnome-system-monitor \
gnome-themes-extra \
gnome-tweaks \
gst-libav \
gst-plugins-good \
gvfs \
gvfs-afc \
gvfs-goa \
gvfs-google \
gvfs-mtp \
gvfs-nfs \
gvfs-smb \
keychain \
nodejs \
noto-fonts \
npm \
papirus-icon-theme \
pavucontrol \
php-fpm \
php-gd \
php-pgsql \
php-redis \
python-nautilus \
sushi \
tilix \
totem \
tracker \
tracker-miners \
tracker3 \
tracker3-miners \
transmission-gtk \
ttf-baekmuk \
ttf-hannom \
ttf-joypixels \
ttf-liberation \
ttf-roboto \
ttf-roboto-mono \
wget \
xdg-user-dirs \
xdg-user-dirs-gtk \
xdg-utils \
yarn \
zsh \
zsh-completions \


# enable cups
sudo systemctl enable cups.service

# enable gdm
sudo systemctl enable gdm.service

# enable docker
sudo systemctl enable docker.service