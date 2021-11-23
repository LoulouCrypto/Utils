#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 12124:12128/tcp
sudo ufw allow 12124:12128/udp
sudo ufw allow 30000:39999/tcp
sudo ufw allow 30000:39999/udp
sudo ufw default allow outgoing
echo "y" | sudo ufw enable
