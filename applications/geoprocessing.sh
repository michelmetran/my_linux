#!/bin/bash


echo "---------------------------------------------"
echo "# GEOPROCESSAMENTO"

# QGIS
sudo apt install gnupg software-properties-common -y
wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
echo "# QGIS" | sudo tee -a /etc/apt/sources.list
echo "deb [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | sudo tee -a /etc/apt/sources.list
echo "deb-src [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install qgis qgis-plugin-grass -y

# Google Earth
wget -O ~/Downloads/google-earth.deb "https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb"
sudo dpkg -i google-earth.deb


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y


