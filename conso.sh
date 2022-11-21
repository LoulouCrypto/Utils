
#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
echo -e "Launching Radeon Power Optimisations at startup"

sleep 1

cat >/usr/local/bin/conso.sh<<'EOF'
#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
/hive/bin/./motd | grep Radeon | awk -F "[ ]"  '{print "echo 0 > /sys/bus/pci/devices/0000:"$3 "/pp_dpm_mclk"  }'| bash;
EOF

sleep 1

chmod +x /usr/local/bin/conso.sh

sleep 1 

cat >/etc/systemd/system/amdconsotweak.service<<'EOF'
[Unit]
Description=Start amdconsotweak on boot
StartLimitIntervalSec=0
[Service]
Type=idle
User=root
ExecStartPre=/bin/sleep 60
ExecStart=/usr/local/bin/conso.sh
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
