#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
ls /home/
echo -e "Witch SSX nodes would you want to Del on this server ? ( just the number )"
read -e SSX_USER
cd ~
sleep 2
echo -e "stoping node"
ssx$SSX_USER stop
sleep 2
systemctl disable ssx$SSX_USER
echo -e "Removing Node ssx$SSX_USER"
sleep 2
userdel ssx$SSX_USER
sleep 2
rm -r /home/ssx$SSX_USER
sleep 2
rm /etc/systemd/system/ssx$SSX_USER.service
sleep 2 
systemctl daemon-reload
sleep 2 
echo -e "ssx Mn $SSX_USER removed"
