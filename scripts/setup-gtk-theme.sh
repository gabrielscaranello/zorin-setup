#! /bin/bash

echo "Setting up GTK Theme..."

echo "Removing old files if exists..."
sudo rm -rf /usr/share/themes/Catppuccin-Mocha-Standard-Blue-*
rm -rf ~/.themes/Catppuccin-Mocha-Standard-Blue-*
rm -rf /tmp/gtk-theme
rm -rf ~/.config/gtk-4.0

echo "Cloning GTK Theme..."
git clone --recurse-submodules https://github.com/catppuccin/gtk.git /tmp/gtk-theme

echo "Installing GTK Theme..."
bash -c "cd /tmp/gtk-theme && virtualenv -p python3 venv && source venv/bin/activate && pip install -r requirements.txt && python install.py mocha -a blue -s standard -l --tweaks rimless"
sudo mv ~/.themes/Catppuccin-Mocha-Standard-Blue-* /usr/share/themes

echo "Linking GTK-4.0 Theme..."
mkdir -p ~/.config/gtk-4.0
ln -fs /usr/share/themes/Catppuccin-Mocha-Standard-Blue-Dark/gtk-4.0/assets ~/.config/gtk-4.0/assets
ln -fs /usr/share/themes/Catppuccin-Mocha-Standard-Blue-Dark/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
ln -fs /usr/share/themes/Catppuccin-Mocha-Standard-Blue-Dark/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/gtk-dark.css

echo "Defining GTK Theme..."
gsettings set org.gnome.desktop.interface gtk-theme "Catppuccin-Mocha-Standard-Blue-Dark"
gsettings set org.gnome.desktop.wm.preferences theme "Catppuccin-Mocha-Standard-Blue-Dark"
dconf write /org/gnome/shell/extensions/user-theme/name "'Catppuccin-Mocha-Standard-Blue-Dark'"

echo "GTK Theme setup done."
