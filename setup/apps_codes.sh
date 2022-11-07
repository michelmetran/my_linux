#!/bin/bash




echo "---------------------------------------------"
echo "# CODES"
echo " "


# R
# https://linuxize.com/post/how-to-install-r-on-ubuntu-18-04/
while true; do
    read -p "Would like to install R (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v R &> /dev/null
        then
            sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9;
            sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' -y;
            sudo apt update;
            sudo apt install r-base -y;
        else
            echo "R already installed!";
        fi
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
        if ! command -v rstudio &> /dev/null
        then
            sudo apt-get install gdebi-core -y;
            wget -O ~/Downloads/rstudio.deb 'https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.1-372-amd64.deb';
            sudo gdebi ~/Downloads/rstudio.deb;
            rm ~/Downloads/rstudio.deb;
        else
            echo "R Studio already installed!";
        fi
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
        if ! command -v code &> /dev/null
        then
            wget -O ~/Downloads/vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868";
            sudo apt install ~/Downloads/vscode.deb -y;
            rm ~/Downloads/vscode.deb;
        else
            echo "VsCode already installed!";
        fi      
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
        if ! command -v heroku &> /dev/null
        then
            snap install --classic heroku;
            heroku login;
        else
            echo "Heroku already installed!";
        fi
            break;;
            
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# JetBrains ToolBox
# https://thirddriver.medium.com/jetbrains-toolbox-the-best-way-to-install-intellij-idea-on-linux-53c1070cd03b
while true; do
    read -p "Would like to install JetBrains ToolBox (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        wget -O ~/Downloads/jetbrains-toolbox.tar.gz "https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.25.12627.tar.gz";
        cd /opt/;
        tar -zxvf ~/Downloads/jetbrains-toolbox.tar.gz;
        mv jetbrains-toolbox-1.25.12627/ jetbrains-toolbox/;
        jetbrains-toolbox/jetbrains-toolbox;
        rm ~/Downloads/jetbrains-toolbox.tar.gz;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# Firefox Driver (GeckoDriver)
# https://askubuntu.com/questions/870530/how-to-install-geckodriver-in-ubuntu
# https://github.com/mozilla/geckodriver
while true; do
    read -p "Would like to install GeckoDriver (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v geckodriver &> /dev/null
        then
            # Download
            wget -O ~/Downloads/geckodriver.tar.gz "https://github.com/mozilla/geckodriver/releases/download/v0.31.0/geckodriver-v0.31.0-linux64.tar.gz";

            # Vai pra a pasta
            cd /usr/local/bin;
            
            # 
            sudo tar -xzvf ~/Downloads/geckodriver.tar.gz;
            sudo chmod +x /usr/local/bin/geckodriver;
            rm ~/Downloads/geckodriver.tar.gz;
            cd ~;
        else
            echo "Geckodriver already installed!";
        fi
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
    read -p "Would like to install ChromeDriver (y/n)? " PROMPT
    case $PROMPT in
    	[Yy]* )
        if ! command -v chromedriver &> /dev/null
        then
            sudo apt-get install chromium-chromedriver -y;
        else
            echo "Chromedriver already installed!";
        fi
            break;;        
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# NodeJS
while true; do
    read -p "Would like to install NodeJS (y/n)? " PROMPT
    case $PROMPT in
    	[Yy]* )
        if ! command -v nodejs &> /dev/null
        then
            sudo apt install nodejs -y;
        else
            echo "NodeJS already installed!";
        fi
            break;;        
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# NPM
while true; do
    read -p "Would like to install NPM (y/n)? " PROMPT
    case $PROMPT in
    	[Yy]* )
        if ! command -v npm &> /dev/null
        then
            sudo apt install npm -y;
        else
            echo "NPM already installed!";
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
