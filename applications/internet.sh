#!/bin/bash


echo "---------------------------------------------"
echo "# INTERNET"

# Brave
apt install apt-transport-https curl
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser -y

# Chrome
wget -O ~/Downloads/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
apt install ~/Downloads/chrome.deb

# qTorrent
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
apt update
apt install qbittorrent

# Thunderbird
apt-get remove thunderbird


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

