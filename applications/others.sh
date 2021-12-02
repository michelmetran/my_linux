#!/bin/bash


echo "---------------------------------------------"
echo "# OTHERS"

# Scrcpy, for Android
sudo apt-get install scrcpy -y

# Gnome Tweak Tool
sudo apt install dconf-editor -y
sudo apt install gnome-tweaks -y
sudo apt install ubuntu-restricted-extras -y
sudo apt install samba -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

