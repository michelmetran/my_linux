#!/bin/bash


echo "---------------------------------------------"
echo "# MANUTENÇÃO"

# Conky
sudo apt-get install conky -y
sudo apt-get install conky-all -y

# TeamViewer
wget -O ~/Downloads/team-viewer.deb "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"
sudo apt install ~/Downloads/team-viewer.deb

# Shutter
sudo add-apt-repository ppa:shutter/ppa
sudo apt-get update
sudo apt-get install shutter -y

# AppImage
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update
sudo apt-get install appimagelauncher -y

# Caffeine
sudo apt-get update
sudo apt-get install caffeine -y

# Gparted
sudo apt-get update
sudo apt-get install gparted -y

# NeoFetch
sudo apt-get update
sudo apt install neofetch -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

