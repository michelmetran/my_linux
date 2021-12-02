#!/bin/bash


echo "---------------------------------------------"
echo "# VIRTUAL MACHINE"

# Virtual Box
apt install virtualbox
apt install virtualbox-ext-pack
adduser $USER vboxusers

# XRDP
apt-get install xrdp


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

