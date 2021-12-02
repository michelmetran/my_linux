#!/bin/bash


echo "---------------------------------------------"
echo "# CLOUD"

# Dropbox
apt update
apt install python3-gpg
wget -O ~/Downloads/dropbox.deb "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb"
apt install ~/Downloads/dropbox.deb

# Google Drive
add-apt-repository ppa:alessandro-strada/ppa
apt update
apt install google-drive-ocamlfuse
mkdir ~/Cloud
mkdir ~/Cloud/"GDrive"
mkdir ~/Cloud/"GDrive Alumni"
mkdir ~/Cloud/"GDrive USP"


# OneDriver
echo 'deb http://download.opensuse.org/repositories/home:/jstaf/xUbuntu_20.04/ /' | tee /etc/apt/sources.list.d/home:jstaf.list
curl -fsSL https://download.opensuse.org/repositories/home:jstaf/xUbuntu_20.04/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/home_jstaf.gpg > /dev/null
apt update
apt install onedriver -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

