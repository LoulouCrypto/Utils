#!/bin/bash
# Script by LoulouCrypto
# https://www.louloucrypto.fr

# Affiche une demande à l'utilisateur
echo -e "\e[31mHow many running GB of swap do you want to add on this server? (Add 'G' after the number)\e[0m"
read -e SWAP

# Vérifie si l'entrée est valide
if ! [[ $SWAP =~ ^[0-9]+G$ ]]; then
  echo -e "\e[31mInvalid input. Please enter a number followed by 'G' (e.g., 1G, 2G).\e[0m"
  exit 1
fi

# Création du fichier swap
sudo fallocate -l $SWAP /swap_$SWAP.file
sudo chmod 600 /swap_$SWAP.file
sudo mkswap /swap_$SWAP.file
sudo swapon /swap_$SWAP.file

# Ajoute l'entrée swap dans fstab
echo "/swap_$SWAP.file none swap sw 0 0" | sudo tee -a /etc/fstab

# Affiche l'espace de swap actuel
free -h
