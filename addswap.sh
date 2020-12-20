#!/bin/bash
# Script by LoulouCrypto
# https://www.louloucrypto.fr
 echo -e "${RED}How many running Go of swap do you want to add on this server ? ( add M after the number)"
 read -e SWAP
SWAPFILE=$(mktemp)
dd if=/dev/zero of=$SWAPFILE bs=1024 count=$SWAP
chmod 600 $SWAPFILE
mkswap $SWAPFILE
swapon -a $SWAPFILE
