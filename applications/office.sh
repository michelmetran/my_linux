#!/bin/bash


echo "---------------------------------------------"
echo "# OTHERS"

# Scrcpy, for Android
sudo apt-get install scrcpy -y

# Samba
sudo apt install samba -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

