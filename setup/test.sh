#!/bin/bash

echo "---------------------------------------------"
echo "# CUSTOMIZE"
echo " "


# Virtual Box
while true; do
    read -p "Would like to install Virtual Box (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v google-drive-ocamlfuse &> /dev/null
        then
            echo "Cheguei!!!!!";
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

