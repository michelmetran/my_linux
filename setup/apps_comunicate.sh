#!/bin/bash




echo "---------------------------------------------"
echo "# COMUNICAÇÃO"
echo " "


# Telegram
# https://ubunlog.com/pt/telegram-como-instalar-este-cliente-de-mensajeria-en-ubuntu-20-04/
while true; do
    read -p "Would like to install Telegram (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v telegram-desktop &> /dev/null
        then
            sudo apt install telegram-desktop -y;
        else
            echo "Telegram-Desktop already installed!";
        fi       
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Zoom
# https://linuxize.com/post/how-to-install-zoom-on-ubuntu-20-04/
while true; do
    read -p "Would like to install Zoom (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v zoom &> /dev/null
        then
            wget -O ~/Downloads/zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb";
            sudo apt install ~/Downloads/zoom.deb -y;
            rm ~/Downloads/zoom.deb;
        else
            echo "Zoom already installed!";
        fi        
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Teams
# https://www.microsoft.com/pt-br/microsoft-365/microsoft-teams/download-app
while true; do
    read -p "Would like to install Teams (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v teams &> /dev/null
        then
            wget -O ~/Downloads/teams.deb "https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x416&culture=pt-br&country=BR";
            sudo apt install ~/Downloads/teams.deb -y;
            rm ~/Downloads/teams.deb;
        else
            echo "Teams already installed!";
        fi
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Discord
# https://linuxconfig.org/how-to-install-discord-on-ubuntu-18-04-bionic-beaver-linux
while true; do
    read -p "Would like to install Discord (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v discord &> /dev/null
        then
            wget -O ~/Downloads/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb";
            sudo apt install ~/Downloads/discord.deb -y;
            rm ~/Downloads/discord.deb;
        else
            echo "Discord already installed!";
        fi        
            break;;
                
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Skype
# https://www.edivaldobrito.com.br/versao-mais-recente-skype-no-linux/
while true; do
    read -p "Would like to install Skype (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v skypeforlinux &> /dev/null
        then
            sudo apt install apt-transport-https -y;
            wget -q -O - https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -;
            echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list;
            sudo apt-get update;
            sudo apt-get install skypeforlinux -y;
        else
            echo "Skype already installed!";
        fi        
            break;;

        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done



echo "---------------------------------------------"
echo "# FINALIZANDO"
echo " "

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
