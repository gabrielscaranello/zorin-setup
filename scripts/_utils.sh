#! /bin/bash

install_nala() {
	echo "Checking if nala is installed..."
	local is_nala_installed=$(dpkg-query -W -f='${Status}' 'nala' 2>/dev/null | grep "install ok installed")

	if [ ! "$is_nala_installed" ]; then
		echo "nala is not installed."
		echo "Installing nala..."
		sudo apt install -y nala
		echo "nala installed."
	else
		echo "nala already installed."
	fi
}
