#!/bin/bash
# Script by LoulouCrypto
# https://www.louloucrypto.fr
 echo -e "${RED}How many running Go of swap do you want to add on this server ? ( add G after the number)"
 read -e SWAP
sudo fallocate -l $SWAP /swap2G.file
sleep 1
sudo chmod 600 /swap2G.file
sleep 1
sudo mkswap /swap2G.file
sleep 1
sudo swapon /swap2G.file
sleep 1 
echo '/swap2G.file none swap sw 0 0' | sudo tee -a /etc/fstab
sleep 1
free -h

