#! /bin/bash

URL="https://sw.kovidgoyal.net/kitty/installer.sh"
DEST="/opt"
BIN_DIR="/usr/local/bin"

echo "Installing Kitty..."
sudo mkdir -p "$DEST"
curl -L "$URL" | sudo sh /dev/stdin launch=n dest="$DEST"

echo "Link binaries..."
sudo rm -f "${BIN_DIR}/kitty" "${BIN_DIR}/kitten"
sudo ln -s "${DEST}/kitty.app/bin/kitty" "${BIN_DIR}/kitty"
sudo ln -s "${DEST}/kitty.app/bin/kitten" "${BIN_DIR}/kitten"

echo "Copy desktop files"
sudo rm -f /usr/share/applications/kitty.desktop /usr/share/applications/kitty-open.desktop 
sudo ln -s "${DEST}/kitty.app/share/applications/kitty.desktop" /usr/share/applications/kitty.desktop
sudo ln -s "${DEST}/kitty.app/share/applications/kitty-open.desktop" /usr/share/applications/kitty-open.desktop

echo "Add kitty to alternatives..."
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator "${BIN_DIR}/kitty" 50

echo "Kitty installed..."
