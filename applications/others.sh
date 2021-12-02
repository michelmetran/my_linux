#!/bin/bash


echo "---------------------------------------------"
echo "# OTHERS"

# Scrcpy, for Android
read -p "Would like to install Scrcpy? (y/n)? " PROMPT

# if install is not confirmed
if [[ $PROMPT == "Y" && $PROMPT == "y" ]]; then
    echo "Porra!!!!!"
	sudo apt-get install scrcpy -y
fi

# Gnome Tweak Tool
sudo apt install dconf-editor -y
sudo apt install gnome-tweaks -y
sudo apt install ubuntu-restricted-extras -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

