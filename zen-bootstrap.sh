  
#!/bin/bash
# Script done by LoulouCrypto
# https://www.louloucrypto.fr
cd ~/.zen
sudo systemctl stop zend
sleep 10
sudo killall zend
sleep 2
rm -r blocks chainstate
wget https://bootstraps.ultimatenodes.io/horizen/masternode/horizen_masternode_blockchain_2021-01-22_10-00-02_UTC.tar.gz
sleep 2
tar xzf horizen_masternode_blockchain_2021-01-22_10-00-02_UTC.tar.gz
sleep 2
rm horizen_masternode_blockchain_2021-01-22_10-00-02_UTC.tar.gz
sleep 2
zend -rescan
