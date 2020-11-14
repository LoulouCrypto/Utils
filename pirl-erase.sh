
#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
cd ~
echo "disable node"
sudo systemctl stop marlin
sleep 5
sudo systemctl stop pirl
sleep 5
sudo systemctl disable pirl
sudo systemctl disable marlin
sleep 2
echo "Removing folders"
sudo rm -r .pirl .marlin mn_installer
sleep 2
sudo rm -r /root/.pirl
sleep 2
sudo rm -r /root/.marlin
sleep 2
sudo rm /usr/bin/pirl
sleep 2
sudo rm /usr/bin/marlin
sleep 2
sudo rm -r /etc/pirl*
sleep 2
sudo rm -f /usr/local/bin/pirl-premium-core 
sleep 2
sudo rm -f /etc/systemd/system/pirlnode.service 
sleep 2
echo "Reloading SystemD"
sudo systemctl daemon-reload
rm pirl-erase.sh
