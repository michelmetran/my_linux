#!/bin/bash


echo "---------------------------------------------"
echo "# VIRTUAL MACHINE"

# Virtual Box
sudo apt install virtualbox -y
sudo apt install virtualbox-ext-pack -y
sudo adduser $USER vboxusers

# XRDP
sudo apt-get install xrdp


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

