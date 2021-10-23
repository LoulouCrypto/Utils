#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

cd 
NBR_DAEMON=$(ps -C altecoind -o pid= | wc -l)
echo -e "${RED}How many ALTC are running nodes on this server ? $NBR_DAEMON ? ${NC}"
read -e NBR_NODES
sleep 1
cd daemons/alt/
rm altecoin_ubuntu18_v*
echo -e "${RED}Stopping $NBR_NODES ALTC Nodes ${NC}"
for (( i=1 ; i<=$NBR_NODES ; i++ )); do ./cli.sh $i stop && sleep 10; done
rm altecoin*
sleep 1
wget https://github.com/altecoin-altc/altecoin/releases/download/v1.1/altecoin_ubuntu18_v1.1.zip
sleep 1 
unzip altecoin_ubuntu18_v1.1.zip
sleep 1
rm altecoin_ubuntu18_v1.1.zip
rm altecoin-qt
chmod +x altecoin*
echo -e "${GREEN}Lunching $NBR_NODES ALTC Nodes ${NC}"
sleep 1
for (( i=1 ; i<=$NBR_NODES ; i++ )); do ./start.sh $i && sleep 30; done
sleep 1
echo -e "${GREEN}Update finish ${NC}"
