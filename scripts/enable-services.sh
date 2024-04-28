#! /bin/bash

echo "Enabling services..."

sudo systemctl enable bluetooth.service
sudo systemctl enable cups
sudo systemctl enable docker
sudo systemctl enable sddm
sudo systemctl enable power-profiles-daemon.service

echo "Services enabled."
