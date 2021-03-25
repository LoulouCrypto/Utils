#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr

  echo -e "Updating System"
apt-get update > /dev/null 2>&1
apt-get upgrade -y > /dev/null 2>&1
 apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" curl systemd figlet nano whiptail htop ufw net-tools unzip tar >/dev/null 2>&1
  clear
  figlet -f slant "MnSf"
  echo -e "Enter the User"
  read -e NEWUSER
  sleep 1
  adduser $NEWUSER
  sleep 1
  usermod -aG sudo $NEWUSER
  sleep 1
  clear 
  figlet -f slant "MnSf"
  echo -e "Preparing the Vps"
  cd ~
  sleep 1
  echo -e "Adding Fw Rules"
  ufw allow 2714
  ufw allow 12474
  sudo ufw allow 16125
  sudo ufw allow from any to any port 12474 
  sudo ufw allow out to any port 12474
  sudo ufw allow from any to any port 16127 
  sudo ufw allow out to any port 16127
  sudo ufw reload
  sudo ufw default allow outgoing
  sudo ufw default deny incoming
  sleep 5
  echo -e "Now Edit the sshd Config"
  nano /etc/ssh/sshd_config
  
  
# If you want to support me
# fdr wallet : 
# fYWa6E3gthATUF2rThr7TtBaVGa1dm7vR8
