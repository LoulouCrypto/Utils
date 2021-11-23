#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr

  echo -e "Updating System"
apt-get update 
apt-get upgrade -y 
sleep 2
 apt-get install -y curl systemd figlet nano whiptail htop ufw net-tools unzip tar net-tools e2fsprogs git
  clear
  figlet -f slant "MnSf"
  echo -e "Enter the User"
  read -e NEWUSER
  sleep 1 
  echo -e "Enter swap in Gbytes ex : 5G or 20G"
  read -e SWAP
  sleep 1
  adduser $NEWUSER
  sleep 1
  usermod -aG sudo $NEWUSER
  sleep 1
  clear 
  figlet -f slant "MnSf"
  echo -e "Preparing the Vps"
  cd ~
  echo -e "Adding Swap"
  sleep 2
sudo fallocate -l $SWAP /swap_$SWAP.file
sleep 1
sudo chmod 600 /swap_$SWAP.file
sleep 1
sudo mkswap /swap_$SWAP.file
sleep 1
sudo swapon /swap_$SWAP.file
sleep 1 
echo '/swap_$SWAP.file none swap sw 0 0' | sudo tee -a /etc/fstab
sleep 1 
echo -e "Swap added : "
free -h
sleep 5
clear
  figlet -f slant "MnSf"
  echo -e "Configuring Ipv6 and Firewall: "
  enable_ipv6
  sleep 1
  echo -e "Adding Fw Rules"
  ufw allow 2714
  ufw allow 12474
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 16124:16128/tcp
sudo ufw allow 16124:16128/udp
sudo ufw allow 30000:39999/tcp
sudo ufw allow 30000:39999/udp
sudo ufw allow 10050
  sudo ufw allow from any to any port 12474 
  sudo ufw allow out to any port 12474
  sudo ufw reload
  sudo ufw default allow outgoing
  sudo ufw default deny incoming
  clear
  figlet -f slant "MnSf"
  sleep 1
  echo -e "Now Edit the sshd Config"
  sleep 5
  nano /etc/ssh/sshd_config
  
  
# If you want to support me
# fdr wallet : 
# fYWa6E3gthATUF2rThr7TtBaVGa1dm7vR8
