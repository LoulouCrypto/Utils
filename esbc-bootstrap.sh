#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
cd ~
sleep 1
cd .esbcoin
sleep 1
esbcoin-cli stop
sleep 2
rm -r blocks chainstate how-to-use.txt macOS_update.sh
sleep 2 
wget https://files.esbc.pro/bootstrap.zip
sleep 1 
unzip bootstrap.zip
sleep 1
rm bootstrap.zip
sleep 2 
esbcoind -daemon
