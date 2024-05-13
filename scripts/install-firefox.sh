#! /bin/bash

PWD=$(pwd)

. $PWD/scripts/_utils.sh

echo "Installing Firefox..."

echo "Removing firefox in flatpak..."
flatpak remove --assumeyes org.mozilla.firefox
flatpak remove --assumeyes --unused
rm -rf "$HOME/.var/app/org.mozilla.firefox"

echo "Removing old files if exists..."
sudo rm -rf /etc/apt/keyrings/packages.mozilla.org.asc /etc/apt/sources.list.d/mozilla.list /etc/apt/sources.list.d/mozilla.list

echo "Adding firefox repo..."
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc >/dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list >/dev/null

echo "Add firefox repo priority"
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla >/dev/null

echo "Installing Firefox..."

install_nala
sudo nala update
sudo nala install -y firefox
