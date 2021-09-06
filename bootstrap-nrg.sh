cd
sleep 1
rm preimages.rlp
sleep 1
wget https://s3-us-west-2.amazonaws.com/download.energi.software/releases/chaindata/mainnet/preimages.rlp
sudo systemctl stop energi3
sleep 1
energi3 removedb
sleep 1
energi3 import-preimages preimages.rlp
sleep 1
cd
sleep 1
curl -s https://s3-us-west-2.amazonaws.com/download.energi.software/releases/chaindata/mainnet/gen3-chaindata.tar.gz | tar xvz
sleep 1
sudo systemctl start energi3
