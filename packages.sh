#! /bin/sh

# Recommend enable multilib mirror
# edit /etc/pacman.conf file
# Search for #[multilib] and #Include = /etc/pacman.d/mirrorlist. And uncomment these lines

pacman -Sy --noconfirm \
    baobab \
    bat \
    bottom \
    chromium \
    cinnamon \
    cinnamon-control-center \
    cinnamon-desktop \
    cinnamon-session \
    cinnamon-translations\
    composer \
    cups \
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
    gdu \
    gnome-calculator \
    gnome-calendar \
    gnome-contacts \
    gnome-disk-utility \
    gnome-font-viewer \
    gnome-software \
    gnome-system-monitor \
    gst-libav \
    gst-plugins-good \
    gtk-engine-murrine \
    gvfs \
    gvfs-afc \
    gvfs-goa \
    gvfs-mtp \
    gvfs-nfs \
    gvfs-smb \
    keychain \
    kitty \
    lazygit \
    lightdm \
    lightdm-gtk-greeter \
    man \
    man-db \
    mintlocale \
    mtools \
    nemo \
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
    python3 \
    redshift \
    ripgrep \
    sassc \
    sudo \
    ttf-baekmuk \
    ttf-hannom \
    ttf-jetbrains-mono-nerd \
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

# enable lightdm
systemctl enable lightdm.service

# enable docker
systemctl enable docker.service
