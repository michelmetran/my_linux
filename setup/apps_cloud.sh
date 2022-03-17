#!/bin/bash


echo "---------------------------------------------"
echo "# CLOUD"
echo " "


# Dropbox
while true; do
    read -p "Would like to install DropBox (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v dropbox &> /dev/null
        then        
            sudo apt update;
            sudo apt install python3-gpg -y;
            wget -O ~/Downloads/dropbox.deb "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb";
            sudo apt install ~/Downloads/dropbox.deb;
            rm ~/Downloads/dropbox.deb;
        else
            echo "Dropbox already installed!";
        fi
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# OneDriver
while true; do
    read -p "Would like to install OneDriver (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )        
        if ! command -v onedriver &> /dev/null
        then        
            echo 'deb http://download.opensuse.org/repositories/home:/jstaf/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:jstaf.list;
            curl -fsSL https://download.opensuse.org/repositories/home:jstaf/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_jstaf.gpg > /dev/null;
            sudo apt update;
            sudo apt install onedriver -y;
        else
            echo "Onedriver already installed!"
        fi
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Google Drive
while true; do
    read -p "Would like to install Google Driver (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v google-drive-ocamlfuse &> /dev/null
        then
            sudo add-apt-repository ppa:alessandro-strada/ppa -y;
            sudo apt update;
            sudo apt install google-drive-ocamlfuse -y;
            mkdir ~/Cloud;
            mkdir ~/Cloud/"GDrive";
            mkdir ~/Cloud/"GDrive Alumni";
            mkdir ~/Cloud/"GDrive USP";
        else
            echo "Google Drive ocamlfuse already installed!";
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
