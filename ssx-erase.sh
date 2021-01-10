#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
ls /home/
echo -e "Witch SSX nodes would you want to Del on this server ? ( just the number )"
read -e SSX_USER
cd ~
sleep 2
echo -e "stoping node"
ssx_mn$SSX_USER stop
sleep 2
systemctl disable ssx_mn$SSX_USER
echo -e "Removing Node ssx_mn$SSX_USER"
sleep 2
userdel ssx_mn$SSX_USER
sleep 2
rm -r /home/ssx_mn$SSX_USER
sleep 2
rm /etc/systemd/system/ssx_mn$SSX_USER.service
sleep 2 
systemctl daemon-reload
sleep 2 
echo -e "ssx Mn $SSX_USER removed"
