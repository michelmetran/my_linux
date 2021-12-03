#!/bin/bash

echo "---------------------------------------------"
echo "# CUSTOMIZE"
echo " "


# Nautilus: Tree View
while true; do
    read -p "Would like to set tree-view in Nautilus (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        gsettings set org.gnome.nautilus.list-view use-tree-view true;
        break;;
        
        [Nn]* )
        gsettings set org.gnome.nautilus.list-view use-tree-view false;
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Nautilus: List View
while true; do
    read -p "Would like to set list-view as default in Nautilus (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view';
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Nautilus: folders first
while true; do
    read -p "Would like to copy template files (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        gsettings set org.gtk.Settings.FileChooser sort-directories-first true;
        break;;
        
        [Nn]* )
        gsettings set org.gtk.Settings.FileChooser sort-directories-first false;
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Limpa área de Trabalho
while true; do
    read -p "Would like to delete icons (trash and home) from desktop (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        gsettings set org.gnome.shell.extensions.desktop-icons show-trash false;
        gsettings set org.gnome.shell.extensions.desktop-icons show-home false;        
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done



# Comando que minimiza os programas se clicar neles, na barra de tarefas
while true; do
    read -p "Would like to copy template files (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize';
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


echo "---------------------------------------------"
echo "# TEMPLATES"
echo " "


# Template Files
while true; do
    read -p "Would like to copy template files (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        cp -a templates/. ~/Templates;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done

echo "---------------------------------------------"
echo "# VIRTUAL MACHINE"
echo " "


# Virtual Box
while true; do
    read -p "Would like to install Virtual Box (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt install virtualbox -y;
        sudo apt install virtualbox-ext-pack -y;
        sudo adduser $USER vboxusers;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# XRDP
while true; do
    read -p "Would like to install XRDP (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
	sudo apt-get install xrdp;
	break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


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
        sudo apt install gnupg software-properties-common -y;
        wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import;
        sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg;
        echo "# QGIS" | sudo tee -a /etc/apt/sources.list;
        echo "deb [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | sudo tee -a /etc/apt/sources.list;
        echo "deb-src [ arch=amd64 ] https://qgis.org/ubuntu-ltr focal main" | sudo tee -a /etc/apt/sources.list;
        sudo apt-get update;
        sudo apt-get install qgis qgis-plugin-grass -y;
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
        wget -O ~/Downloads/google-earth.deb "https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb";
        sudo dpkg -i google-earth.deb;
        rm ~/Downloads/google-earth.deb;					
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


echo "---------------------------------------------"
echo "# MÍDIA"
echo " "


# Spotify
# https://www.spotify.com/br/download/linux
while true; do
    read -p "Would like to install Spotify (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt-get install curl -Y;
        curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -;
        echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list;
        sudo apt-get update;
        sudo apt-get install spotify-client -y;
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
        sudo add-apt-repository ppa:inkscape.dev/stable;
        sudo apt-get update;
        sudo apt-get install inkscape -y;
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
        snap install vlc;
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
        sudo apt install ffmpeg -y;
        sudo add-apt-repository ppa:obsproject/obs-studio;
        sudo apt-get update;
        sudo apt-get install obs-studio -y;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


echo "---------------------------------------------"
echo "# INTERNET"
echo " "


# Brave
# https://brave.com/linux/
while true; do
    read -p "Would like to install Brave (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt install apt-transport-https curl -y;
        curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg;
        echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list;
        sudo apt update;
        sudo apt install brave-browser -y;
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
        wget -O ~/Downloads/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb";
        sudo apt install ~/Downloads/chrome.deb;
        rm ~/Downloads/chrome.deb;				
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
        sudo apt install tor;
        sudo apt install torbrowser-launcher;
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
        sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable;
        sudo apt update;
        sudo apt install qbittorrent -y;
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
echo "# CODES"
echo " "


# R
# https://linuxize.com/post/how-to-install-r-on-ubuntu-18-04/
while true; do
    read -p "Would like to install R (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9;
        sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/';
        sudo apt update;
        sudo apt install r-base -y;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# RStudio
# https://askubuntu.com/questions/1337617/unable-to-install-libclang-on-20-04-lts
# sudo apt install libclang-dev
while true; do
    read -p "Would like to install R Studio (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt-get install gdebi-core -y;
        wget -O ~/Downloads/rstudio.deb 'https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.1-372-amd64.deb';
        sudo gdebi ~/Downloads/rstudio.deb;
        rm ~/Downloads/rstudio.deb;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# VSCode
while true; do
    read -p "Would like to install VsCode (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        wget -O ~/Downloads/vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868";
        sudo apt install ~/Downloads/vscode.deb -y;
        rm ~/Downloads/vscode.deb;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Heroku
while true; do
    read -p "Would like to install Heroku (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        snap install --classic heroku;
        heroku login;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# JetBrains ToolBox
while true; do
    read -p "Would like to install JetBrains ToolBox (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        wget -O ~/Downloads/jetbrains.tar.gz "https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.22.10774.tar.gz";
        tar -zxvf ~/Downloads/jetbrains.tar.gz;
        #cd jetbrains-toolbox*;
        ~/Downloads/jetbrains-toolbox;
        rm ~/Downloads/jetbrains.tar.gz;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Firefox Driver (GeckoDriver)
# https://askubuntu.com/questions/870530/how-to-install-geckodriver-in-ubuntu
while true; do
    read -p "Would like to install GeckoDriver (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        wget -O ~/Downloads/geckodriver.tar.gz "https://github.com/mozilla/geckodriver/releases/download/v0.29.1/geckodriver-v0.29.1-linux64.tar.gz";
        sudo sh -c 'tar -x geckodriver -zf geckodriver.tar.gz -O > /usr/bin/geckodriver';
        sudo chmod +x /usr/bin/geckodriver;
        rm ~/Downloads/geckodriver.tar.gz;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Chrome Driver
# https://askubuntu.com/questions/1004947/how-do-i-use-the-chrome-driver-in-ubuntu-16-04
while true; do
    read -p "Would like to install Chromedriver (y/n)? " PROMPT
    case $PROMPT in
    	[Yy]* )
        sudo apt-get install chromium-chromedriver;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


echo "---------------------------------------------"
echo "# COMUNICAÇÃO"
echo " "


# Telegram
# https://ubunlog.com/pt/telegram-como-instalar-este-cliente-de-mensajeria-en-ubuntu-20-04/
while true; do
    read -p "Would like to install DropBox (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt install telegram-desktop;
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
        wget -O ~/Downloads/zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb";
        sudo apt install ~/Downloads/zoom.deb -y;
        rm ~/Downloads/zoom.deb;
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
        wget -O ~/Downloads/teams.deb "https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x416&culture=pt-br&country=BR";
        sudo apt install ~/Downloads/teams.deb -y;
        rm ~/Downloads/teams.deb;
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
        wget -O ~/Downloads/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb";
        sudo apt install ~/Downloads/discord.deb -y;
        rm ~/Downloads/discord.deb;        
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
    read -p "Would like to install Discord (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt install apt-transport-https -y;
        wget -q -O - https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -;
        echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list;
        sudo apt-get update;
        sudo apt-get install skypeforlinux;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done





echo "---------------------------------------------"
echo "# CLOUD"
echo " "


# Dropbox
while true; do
    read -p "Would like to install DropBox (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt update;
        sudo apt install python3-gpg -y;
        wget -O ~/Downloads/dropbox.deb "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb";
        sudo apt install ~/Downloads/dropbox.deb;
        rm ~/Downloads/dropbox.deb;                
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
        echo 'deb http://download.opensuse.org/repositories/home:/jstaf/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:jstaf.list;
        curl -fsSL https://download.opensuse.org/repositories/home:jstaf/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_jstaf.gpg > /dev/null;
        sudo apt update;
        sudo apt install onedriver -y;
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
        sudo add-apt-repository ppa:alessandro-strada/ppa;
        sudo apt update;
        sudo apt install google-drive-ocamlfuse -y;
        mkdir ~/Cloud;
        mkdir ~/Cloud/"GDrive";
        mkdir ~/Cloud/"GDrive Alumni";
        mkdir ~/Cloud/"GDrive USP";	
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


echo "---------------------------------------------"
echo "# MANUTENÇÃO"
echo " "


# Conky
# https://vitux.com/how-to-install-conky-system-monitor-and-conky-manager-on-debian-10/
while true; do
    read -p "Would like to install Conky (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* ) 
        sudo apt-get install conky -y;
        sudo apt-get install conky-all -y;
        sudo add-apt-repository ppa:tomtomtom/conky-manager;
        sudo apt-get update;
        sudo apt-get install conky-manager -y;
        cp -a configs/conky ~/.conky;
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
        wget -O ~/Downloads/team-viewer.deb "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb";
        sudo apt install ~/Downloads/team-viewer.deb;
        rm ~/Downloads/team-viewer.deb;                
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
        sudo add-apt-repository ppa:shutter/ppa;
        sudo apt-get update;
        sudo apt-get install shutter -y;
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
        sudo add-apt-repository ppa:appimagelauncher-team/stable;
        sudo apt-get update;
        sudo apt-get install appimagelauncher -y;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Caffeine
while true; do
    read -p "Would like to install Caffeine (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* ) 
        sudo apt-get update;
        sudo apt-get install caffeine -y;
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
        sudo apt-get update;
        sudo apt-get install gparted -y;
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
        sudo apt-get update;
        sudo apt install neofetch -y;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


echo "---------------------------------------------"
echo "# OFFICE"
echo " "


# Samba
while true; do
    read -p "Would like to install Samba (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt install samba -y;
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
        sudo apt-get install scrcpy -y;
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
        sudo apt install dconf-editor -y;
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
        sudo apt install gnome-tweaks -y;
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
