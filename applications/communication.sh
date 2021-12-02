#!/bin/bash


echo "---------------------------------------------"
echo "# COMUNICAÇÃO"

# Telegram
sudo apt install telegram-desktop

# Zoom
wget -O ~/Downloads/zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
sudo apt install ~/Downloads/zoom.deb -y

# Teams
wget -O ~/Downloads/teams.deb "https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x416&culture=pt-br&country=BR"
sudo apt install ~/Downloads/teams.deb -y

# Discord
wget -O ~/Downloads/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt install ~/Downloads/discord.deb -y


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

