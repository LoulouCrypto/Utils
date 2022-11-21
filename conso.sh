#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
echo -e "Lunching Radeon Power Optimisations"
sleep 1
motd | grep Radeon | awk -F "[ ]"  '{print "echo 0 > /sys/bus/pci/devices/0000:"$3 "/pp_dpm_mclk"  }'| bash;
sleep 1 
echo -e "Radeon Power Optimisations Done"
