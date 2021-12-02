#!/bin/bash


echo "---------------------------------------------"
echo "# OTHERS"

# Scrcpy, for Android
apt-get install scrcpy -y

# Gnome Tweak Tool
apt install dconf-editor -y
apt install gnome-tweak-tool -y
apt install ubuntu-restricted-extras -y
apt install samba -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

