#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
cd ~
echo "disable zennode"
sudo systemctl stop zend.service
sleep 2
sudo systemctl stop zentracker.service
sleep 2
sudo killall zend
sudo killall zen*
sleep 2
sudo systemctl disable zend.service
sleep 2
sudo systemctl disable zentracker.service
sleep 2
sudo systemctl disable zenupdate.service
sleep 2
echo "Removing zennode"
sudo rm /usr/bin/zend
sleep 2
sudo rm -r .zen nodetracker
sleep 2
sudo rm /lib/systemd/system/zend.service
sleep 2
sudo rm /lib/systemd/system/zentracker.service
sleep 2
sudo rm /lib/systemd/system/zenupdate.service
sleep 2
sudo rm /lib/systemd/system/zenupdate.timer
echo "ZenNode Erased"
