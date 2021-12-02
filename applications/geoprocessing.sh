#!/bin/bash


echo "---------------------------------------------"
echo "# GEOPROCESSAMENTO"

# QGIS
apt install gnupg software-properties-common
wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
echo "# QGIS" | sudo tee -a /etc/apt/sources.list
echo "deb [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | tee -a /etc/apt/sources.list
echo "deb-src [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | tee -a /etc/apt/sources.list
apt-get update
apt-get install qgis qgis-plugin-grass

# Google Earth
wget -O ~/Downloads/google-earth.deb "https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb"
sudo dpkg -i google-earth.deb


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

