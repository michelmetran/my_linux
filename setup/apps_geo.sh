#!/bin/bash




echo "---------------------------------------------"
echo "# GEOPROCESSAMENTO"
echo " "


# QGIS
# https://qgis.org/pt_BR/site/forusers/alldownloads.html#debian-ubuntu
# https://linuxhint.com/install-qgis3-geospatial-ubuntu/
while true; do
    read -p "Would like to install QGIS (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v qgis &> /dev/null
        then
            sudo apt install gnupg software-properties-common -y;
            wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import;
            sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg;
            echo "# QGIS" | sudo tee -a /etc/apt/sources.list;
            echo "deb [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | sudo tee -a /etc/apt/sources.list;
            echo "deb-src [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | sudo tee -a /etc/apt/sources.list;
            sudo apt-get update;
            sudo apt-get install qgis qgis-plugin-grass -y;
        else
            echo "qGIS already installed!";
        fi
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done



# Google Earth
# https://www.edivaldobrito.com.br/google-earth-no-ubuntu
# https://www.google.com.br/earth/download/gep/agree.html
while true; do
    read -p "Would like to install Google Earth (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v google-earth-pro &> /dev/null
        then
            wget -O ~/Downloads/google-earth.deb "https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb";
            sudo dpkg -i ~/Downloads/google-earth.deb;
            rm ~/Downloads/google-earth.deb;        
        else
            echo "Google Earth already installed!";
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
