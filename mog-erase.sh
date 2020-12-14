#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
cd ~
echo "Stopping MOG Node"
sleep 1
systemctl stop MOGWAI
sleep 2
systemctl disable MOGWAI
sleep 2
echo "Erasing Files"
rm -r .mogwai* mogwai* 
sleep 2
rm /usr/local/bin/mogwai*
sleep 2
rm /etc/systemd/system/MOGWAI.service
sleep 2 
echo " Mogwai node Erased"
rm mog-erase.sh
