#!/bin/bash


echo "---------------------------------------------"
echo "# MÍDIA"

# Spotify
apt-get install curl -Y
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | apt-key add -
echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install spotify-client -y

# InkScape
add-apt-repository ppa:inkscape.dev/stable
apt-get update
apt-get install inkscape -y

# VLC
snap install vlc

# OBS
apt install ffmpeg
add-apt-repository ppa:obsproject/obs-studio
apt-get update
apt-get install obs-studio -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

