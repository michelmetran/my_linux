#!/bin/bash



echo "---------------------------------------------"
echo "# OFFICE"
echo " "


# Samba
while true; do
    read -p "Would like to install Samba (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v samba &> /dev/null
        then
            sudo apt install samba -y;
        else
            echo "Samba already installed!";
        fi	        
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done

echo "---------------------------------------------"
echo "# OTHERS"
echo " "


# Scrcpy, for Android
while true; do
    read -p "Would like to install Scrcpy (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v scrcpy &> /dev/null
        then
            sudo apt-get install scrcpy -y;
        else
            echo "Scrcpy already installed!";
        fi                
	        break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# dconf-editor
while true; do
    read -p "Would like to install dconf-editor (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v dconf-editor &> /dev/null
        then
            sudo apt install dconf-editor -y;
        else
            echo "dconf-editor already installed!";
        fi
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# gnome-tweaks
while true; do
    read -p "Would like to install Gnome Tweak (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v gnome-tweaks &> /dev/null
        then
            sudo apt install gnome-tweaks -y;
        else
            echo "Gnome-Tweaks already installed!";
        fi
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# ubuntu-restricted-extras
while true; do
    read -p "Would like to install Ubuntu-Restricted-Extras (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt install ubuntu-restricted-extras -y;
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
