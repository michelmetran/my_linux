#!/bin/bash



echo "---------------------------------------------"
echo "# MÍDIA"
echo " "


# Spotify
# https://www.spotify.com/br/download/linux
while true; do
    read -p "Would like to install Spotify (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v spotify &> /dev/null
        then
            sudo apt-get install curl -y;
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -;
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list;
            sudo apt-get update;
            sudo apt-get install spotify-client -y;
        else
            echo "Spotify already installed!";
        fi
            break;;

        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# InkScape
# http://ubuntuhandbook.org/index.php/2019/01/inkscape-0-92-4-released-install-ubuntu-18-04/
# https://inkscape.org/pt-br/release/inkscape-1.0/gnulinux/ubuntu/ppa/dl/
while true; do
    read -p "Would like to install InkScape (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v inkscape &> /dev/null
        then
            sudo add-apt-repository ppa:inkscape.dev/stable -y;
            sudo apt-get update;
            sudo apt-get install inkscape -y;
        else
            echo "inkscape already installed!";
        fi
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# VLC
# https://www.vlchelp.com/install-ubuntu-linux/
while true; do
    read -p "Would like to install VLC (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v vlc &> /dev/null
        then
            snap install vlc;
        else
            echo "VLC already installed!";
        fi        
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# OBS
# https://manjaro.site/how-to-install-obs-studio-on-ubuntu-19-04/
# https://obsproject.com/wiki/install-instructions#linux
while true; do
    read -p "Would like to install OBS Studio (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v obs &> /dev/null
        then
            sudo apt install ffmpeg -y;
            sudo add-apt-repository ppa:obsproject/obs-studio -y;
            sudo apt-get install obs-studio -y;
        else
            echo "Obs already installed!";
        fi
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done

