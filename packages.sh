#! /bin/sh

# Recommend enable multilib mirror
# edit /etc/pacman.conf file
# Search for #[multilib] and #Include = /etc/pacman.d/mirrorlist. And uncomment these lines 

pacman -Sy --noconfirm \
archlinux-wallpaper \
baobab \
bat \
composer \
cups \
dialog \
discord \
docker \
docker-compose \
dosfstools \
eog \
evince \
file-roller \
firefox \
firefox-i18n-pt-br \
flameshot \
flatpak \
gamemode \
gdm \
gnome-calculator \
gnome-calendar \
gnome-contacts \
gnome-contacts \
gnome-disk-utility \
gnome-font-viewer \
gnome-icon-theme-extras \
gnome-initial-setup \
gnome-keyring \
gnome-menus \
gnome-software \
gnome-software-packagekit-plugin \
gnome-system-monitor \
gnome-text-editor \
gnome-themes-extra \
gnome-tweaks \
grim \
gst-libav \
gst-plugins-good \
gtk-engine-murrine \
gvfs \
gvfs-afc \
gvfs-goa \
gvfs-google \
gvfs-mtp \
gvfs-nfs \
gvfs-smb \
keychain \
lazygit \
man \
man-db \
mtools \
nautilus \
neovim \
network-manager-applet \
networkmanager \
noto-fonts \
noto-fonts-emoji \
ntfs-3g \
numlockx \
os-prober \
packagekit \
pacman-contrib \
php-fpm \
piper \
python-nautilus \
python-pynvim \
sassc \
sudo \
sushi \
telegram-desktop \
tilix \
ttf-baekmuk \
ttf-firacode-nerd \
ttf-hannom \
ttf-joypixels \
ttf-liberation \
ttf-roboto \
ttf-roboto-mono \
vlc \
wget \
wireless_tools \
wpa_supplicant \
xclip \
xdg-desktop-portal \
xdg-desktop-portal-gnome \
xdg-user-dirs \
xdg-user-dirs-gtk \
xdg-utils \
xorg-xclipboard \
zsh \
zsh-completions


# enable network
systemctl enable NetworkManager

# enable cups
systemctl enable cups.service

# enable gdm
systemctl enable gdm.service

# enable docker
systemctl enable docker.service

# enable bluetooth
systemctl enable bluetooth.service
