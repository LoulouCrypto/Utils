#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr

if [[ $USER == *root* ]]; then
echo -e "Updating System"
sleep 2
apt-get update
apt-get upgrade -y
clear
echo -e "Installing Dependencies"
sleep 2
apt-get install -y curl systemd figlet nano whiptail htop net-tools unzip tar net-tools e2fsprogs git
sleep 1
apt-get install -y build-essential libtool autotools-dev automake pkg-config bsdmainutils libboost-all-dev libssl-dev libboost-tools-dev libdb++-dev libevent-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libevent-dev libboost-all-dev libdb++-dev libssl-dev libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev lib32gcc-4.8-dev g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu nsis libgmp3-dev g++-mingw-w64-x86-64 software-properties-common g++-mingw-w64-i686 mingw-w64-i686-dev 
sleep 1
apt-get install -y librsvg2-bin libtiff-tools bsdmainutils cmake imagemagick libcap-dev libz-dev libbz2-dev python-setuptools
sleep 1
apt-get install -y g++-aarch64-linux-gnu binutils-aarch64-linux-gnu g++-arm-linux-gnueabihf binutils-arm-linux-gnueabihf g++-4.8-multilib gcc-4.8-multilib binutils-gold bsdmainutils g++-aarch64-linux-gnu binutils-aarch64-linux-gnu g++-aarch64-linux-gnu 
sleep 1 
sudo add-apt-repository -y ppa:bitcoin/bitcoin
sleep 1
sudo apt-get update
sleep 1
sudo apt-get -y install libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev
sleep 1
clear
echo -e "Configuring System"
enable_ipv6 
sleep 2 
echo -e "Enter the User"
read -e NEWUSER
echo -e "Enter swap : 20G or 50G"
read -e SWAP
sleep 1
adduser $NEWUSER
sleep 1
usermod -aG sudo $NEWUSER
sleep 1
clear 
sleep 2
sudo fallocate -l $SWAP /swap.file
sleep 1
sudo chmod 600 /swap.file
sleep 1
sudo mkswap /swap.file
sleep 1
sudo swapon /swap.file
sleep 1 
echo '/swap.file none swap sw 0 0' | sudo tee -a /etc/fstab
sleep 1 
free -h
sleep 1 
ifconfig
sleep 10
nano /etc/netplan/01-netcfg.yaml

elif [[ $USER == *fdr* ]]; then
 cd
 sleep 1
 wget https://downloads.fdreserve.com/bootstraps/fymnn/daemons.zip
 sleep 1 
 unzip daemons.zip 
 sleep 1 
 rm daemons.zip
 sleep 1
 chmod -R 764 daemons
 sleep 1
 chmod +x install_node.sh
else
   echo -e "Check the user"
   exit 1
fi
