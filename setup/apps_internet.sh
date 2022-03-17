#!/bin/bash



echo "---------------------------------------------"
echo "# INTERNET"
echo " "


# Brave
# https://brave.com/linux/
while true; do
    read -p "Would like to install Brave (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v brave-browser &> /dev/null
        then
            sudo apt install apt-transport-https curl -y;
            curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg;
            echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list;
            sudo apt update;
            sudo apt install brave-browser -y;
        else
            echo "Brave Browser already installed!";
        fi
            break;;

        [Nn]* )
        break;;

        * )
        echo "Please answer yes or no.";;
    esac
done


# Chrome
# https://linuxize.com/post/how-to-install-google-chrome-web-browser-on-ubuntu-18-04/
while true; do
    read -p "Would like to install Chrome (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v google-chrome &> /dev/null
        then
            wget -O ~/Downloads/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb";
            sudo apt install ~/Downloads/chrome.deb;
            rm ~/Downloads/chrome.deb;
        else
            echo "Google Chrome already installed!";
        fi
            break;;

        [Nn]* )
        break;;

        * )
        echo "Please answer yes or no.";;
    esac
done



# Tor
# https://linuxconfig.org/install-tor-proxy-on-ubuntu-20-04-linux
# https://linuxconfig.org/how-to-install-tor-browser-on-ubuntu-20-04-lts-focal-fossa-linux
while true; do
    read -p "Would like to install Tor (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v torbrowser-launcher &> /dev/null
        then
            sudo apt install tor -y;
            sudo apt install torbrowser-launcher -y;
        else
            echo "Tor Browser already installed!";
        fi
            break;;

        [Nn]* )
        break;;

        * )
        echo "Please answer yes or no.";;
    esac
done


# qTorrent
# https://www.linuxbabe.com/ubuntu/install-qbittorrent-ubuntu-18-04-desktop-server
while true; do
    read -p "Would like to install qTorrent (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v qbittorrent &> /dev/null
        then
            sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y;
            sudo apt update;
            sudo apt install qbittorrent -y;
        else
            echo "qbittorrent already installed!";
        fi
            break;;

        [Nn]* )
        break;;

        * )
        echo "Please answer yes or no.";;
    esac
done

# JDownloader
# https://snapcraft.io/install/jdownloader2/ubuntu
while true; do
    read -p "Would like to install JDownloader (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v ~/snap/jdownloader2 &> /dev/null
        then
            snap install jdownloader2;
        else
            echo "JDownloader already installed!";
        fi
            break;;

        [Nn]* )
        break;;

        * )
        echo "Please answer yes or no.";;
    esac
done


# Thunderbird
while true; do
    read -p "Would like to REMOVE Thunderbird (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt-get remove thunderbird -y;
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
