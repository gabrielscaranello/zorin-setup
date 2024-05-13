#! /bin/bash

PWD=$(pwd)

. $PWD/scripts/_utils.sh

echo "Removing xterm..."
install_nala
sudo nala purge -y xterm*
sudo nala autoremove
echo "xterm removed."
