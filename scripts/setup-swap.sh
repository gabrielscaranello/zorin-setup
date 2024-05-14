#! /bin/bash

SIZE=$(cat </proc/meminfo | awk '/MemTotal/ { printf("%.0f", ($2 / 1024 / 1024 / 2)) }')

echo "Setting up swap..."

echo "Removing existing swap..."
sudo swapoff --all
sudo zramswap stop
sudo rm -rf /swapfile
sudo sed -i '/^PERCENT/d' /etc/default/zramswap
sudo sed -i '/^PRIORITY/d' /etc/default/zramswap
sudo sed -i '/^\/swapfile/d' /etc/fstab

echo "Creating zramswap config..."
echo 'PERCENT=50' | sudo tee -a /etc/default/zramswap
echo 'PRIORITY=100' | sudo tee -a /etc/default/zramswap

echo "Creating swapfile"
sudo fallocate -l ${SIZE}G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "Configuring swappiness and vfs_cache_pressure..."
sudo rm -rf /etc/sysctl.d/00-custom.conf
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.d/00-custom.conf
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.d/00-custom.conf

echo "Starting zramswap..."
sudo swapon /swapfile
sudo zramswap start

echo "Swap configured."
