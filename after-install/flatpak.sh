#! /bin/sh

APPS=(
  com.google.Chrome
  com.mattjakeman.ExtensionManager
  # com.valvesoftware.Steam
  io.dbeaver.DBeaverCommunity
  org.gimp.GIMP
  org.onlyoffice.desktopeditors
  rest.insomnia.Insomnia
)

NOT_OVERRIDE_APPS=(
  # com.valvesoftware.Steam
)

# Install apps
echo "Installing APPs..."
for app in ${APPS[@]}; do
  flatpak install flathub --assumeyes "$app"
done
echo $'\nInstall APPs completed!\n'

# Overhide host filesystem
echo "Override APPs to host filesystem"
for app in ${APPS[@]}; do
  if [[ ! " ${NOT_OVERRIDE_APPS[*]} " == *" $app "* ]]; then
    echo $'Overriding' "$app..."
    sudo flatpak override --filesystem=host "$app"
    sudo flatpak override --filesystem=xdg-config/gtk-4.0 "$app"
  fi
done
echo $'\nAll override completed\n'

