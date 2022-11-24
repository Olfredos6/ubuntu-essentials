#!/usr/bin/bash
# This script allows adding a swap memory to your Ubuntu installation.
# Run it by passing the desired size as follows: `./add-swap-memory.sh 2` for a 2Gig swap memory
size="$1G"
sudo fallocate -l $size /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
echo "Active Swap"
sudo swapon --show
