#!/usr/bin/bash
size="$1G"
sudo fallocate -l $size /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
echo "Active Swap"
sudo swapon --show