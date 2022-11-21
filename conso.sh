#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
echo -e "Lunching Radeon Power Optimisations at startup"

cat >/etc/systemd/system/amdconsotweak.service<<'EOF'
[Unit]
Description=Start amdconsotweak on boot
StartLimitIntervalSec=0

[Service]
Type=idle
ExecStart=/hive/bin/motd | grep Radeon | awk -F "[ ]"  '{print "echo 0 > /sys/bus/pci/devices/0000:"$3 "/pp_dpm_mclk"  }'| bash;

[Install]
WantedBy=multi-user.target
EOF

sleep 1 
systemctl daemon-reload
sleep 1
systemctl enable amdconsotweak.service
sleep 1
systemctl start amdconsotweak.service
sleep 1

echo -e "Radeon Power Optimisations Done"
