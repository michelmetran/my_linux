#!/bin/bash


echo "---------------------------------------------"
echo "# MANUTENÇÃO"

# Conky
apt-get install conky -y
apt-get install conky-all -y

# TeamViewer
wget -O ~/Downloads/team-viewer.deb "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"
apt install ~/Downloads/team-viewer.deb

# Shutter
add-apt-repository ppa:shutter/ppa
apt-get update
apt-get install shutter -y

# AppImage
add-apt-repository ppa:appimagelauncher-team/stable
apt-get update
apt-get install appimagelauncher -y

# Caffeine
apt-get update
apt-get install caffeine -y

# Gparted
apt-get update
apt-get install gparted -y

# NeoFetch
apt-get update
apt install neofetch -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

