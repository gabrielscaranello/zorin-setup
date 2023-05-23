#! /bin/sh

APPS=(
    com.mattjakeman.ExtensionManager
    io.dbeaver.DBeaverCommunity
    org.gimp.GIMP
    org.onlyoffice.desktopeditors
    rest.insomnia.Insomnia
)

# Install apps
echo "Installing APPs..."
for app in ${APPS[@]}; do
    flatpak install flathub --assumeyes "$app"
done
echo $'\nInstall APPs completed!\n'

# Overhide host filesystem
echo "Override APPs to host filesystem"

sudo flatpak override --filesystem=host
sudo flatpak override --filesystem=xdg-config/gtk-4.0
sudo flatpak override --filesystem=xdg-config/gtk-3.0

echo $'\nAll override completed\n'
