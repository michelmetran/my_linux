#!/bin/bash


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
echo "# FINALIZANDO"

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y

