#!/bin/bash



echo "---------------------------------------------"
echo "# MANUTENÇÃO"
echo " "


# Conky
# https://vitux.com/how-to-install-conky-system-monitor-and-conky-manager-on-debian-10/
while true; do
    read -p "Would like to install Conky (y/n)? " PROMPT
    case $PROMPT in    
        [Yy]* ) 
        if ! command -v conky &> /dev/null
        then
            sudo apt-get install conky -y;
            sudo apt-get install conky-all -y;
            sudo add-apt-repository ppa:tomtomtom/conky-manager -y;
            sudo apt-get update;
            sudo apt-get install conky-manager -y;
            cp -a configs/conky ~/.conky;
        else
            echo "Conky already installed!";
        fi
            break;;

        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# TeamViewer
# https://www.linuxbabe.com/ubuntu/install-teamviewer-ubuntu-18-04-lts
while true; do
    read -p "Would like to install TeamViewer (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* ) 
        if ! command -v teamviewer &> /dev/null
        then
            wget -O ~/Downloads/team-viewer.deb "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb";
            sudo apt install ~/Downloads/team-viewer.deb -y;
            rm ~/Downloads/team-viewer.deb;
        else
            echo "Team Viewer already installed!";
        fi
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Shutter
while true; do
    read -p "Would like to install Shutter (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v shutter &> /dev/null
        then        
            sudo add-apt-repository ppa:shutter/ppa -y;
            sudo apt-get update;
            sudo apt-get install shutter -y;
        else
            echo "Shutter already installed!";
        fi	        
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Peek
# https://askubuntu.com/questions/107726/how-to-create-animated-gif-images-of-a-screencast
while true; do
    read -p "Would like to install Peek (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v peek &> /dev/null
        then        
            sudo apt-get update;
            sudo apt-get install peek -y;
        else
            echo "Peek already installed!";
        fi	        
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# AppImage
# https://askubuntu.com/questions/1349951/how-do-i-install-appimagelauncher-in-ubuntu-21-04
while true; do
    read -p "Would like to install AppImage (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v AppImageLauncher &> /dev/null
        then        
            sudo add-apt-repository ppa:appimagelauncher-team/stable -y;
            sudo apt-get update;
            sudo apt-get install appimagelauncher -y;
            #mkdir ~/Documents;
        else
            echo "AppImageLauncher already installed!";
        fi	        
            break;;
                    
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Caffeine
# https://www.zhornsoftware.co.uk/caffeine/
while true; do
    read -p "Would like to install Caffeine (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v caffeine &> /dev/null
        then
            sudo apt-get update;
            sudo apt-get install caffeine -y;
        else
            echo "Caffeine already installed!";
        fi
            break;;

        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Gparted
while true; do
    read -p "Would like to install Gparted (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v gparted &> /dev/null
        then
            sudo apt-get update;
            sudo apt-get install gparted -y;

        else
            echo "Gparted already installed!";
        fi
            break;;        		
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# NeoFetch
# https://thiagolucioweb.wordpress.com/2017/01/22/neofetch-o-novo-e-melhorado-screenfetch-coloque-o-trademark-bench-do-seu-sistema-no-seu-bash/
while true; do
    read -p "Would like to install NeoFetch (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )        
        if ! command -v neofetch &> /dev/null
        then
            sudo apt-get update;
            sudo apt install neofetch -y;
        else
            echo "Neofetch already installed!";
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
