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
echo "# COMUNICAÇÃO"

# Telegram
apt install telegram-desktop

# Zoom
wget -O ~/Downloads/zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
apt install ~/Downloads/zoom.deb -y

# Teams
wget -O ~/Downloads/teams.deb "https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x416&culture=pt-br&country=BR"
apt install ~/Downloads/teams.deb -y

# Discord
wget -O ~/Downloads/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
apt install ~/Downloads/discord.deb -y


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
echo "# CODES"

# R
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
apt update
apt install r-base

# RStudio
apt-get install gdebi-core
wget -O ~/Downloads/rstudio.deb 'https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.1-372-amd64.deb'
gdebi ~/Downloads/rstudio.deb

# VSCode
wget -O ~/Downloads/vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
apt install ~/Downloads/vscode.deb

# Heroku
snap install --classic heroku
heroku login

# JetBrains ToolBox
wget -O ~/Downloads/jetbrains.tar.gz "https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.22.10774.tar.gz"
cd ~/Downloads
tar -zxvf jetbrains.tar.gz
cd jetbrains-toolbox*
./jetbrains-toolbox


echo "---------------------------------------------"
echo "# VIRTUAL MACHINE"

# Virtual Box
apt install virtualbox
apt install virtualbox-ext-pack
adduser $USER vboxusers

# XRDP
apt-get install xrdp


echo "---------------------------------------------"
echo "# OTHERS"

# Scrcpy, for Android
apt-get install scrcpy

# Gnome Tweak Tool
sudo apt install dconf-editor
apt install gnome-tweak-tool


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
echo 'deb http://download.opensuse.org/repositories/home:/jstaf/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:jstaf.list
curl -fsSL https://download.opensuse.org/repositories/home:jstaf/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_jstaf.gpg > /dev/null
apt update
apt install onedriver


echo "---------------------------------------------"
echo "# FINALIZANDO"

apt-get update
apt-get upgrade
apt-get autoremove


