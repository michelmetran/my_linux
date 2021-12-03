#!/bin/bash

echo "---------------------------------------------"
echo "# CUSTOMIZE"
echo " "


# Virtual Box
while true; do
    read -p "Would like to install Virtual Box (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v virtualbox &> /dev/null
        then
            sudo apt install virtualbox -y;
            sudo apt install virtualbox-ext-pack -y;
            sudo adduser $USER vboxusers;
        else
            echo "VirtualBox already installed!";
        fi
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done

