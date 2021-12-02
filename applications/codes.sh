#!/bin/bash


echo "---------------------------------------------"
echo "# CODES"

# R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt update
sudo apt install r-base -y

# RStudio
sudo apt-get install gdebi-core -y
wget -O ~/Downloads/rstudio.deb 'https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.1-372-amd64.deb'
sudo gdebi ~/Downloads/rstudio.deb

# VSCode
wget -O ~/Downloads/vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo apt install ~/Downloads/vscode.deb -y

# Heroku
snap install --classic heroku
#heroku login

# JetBrains ToolBox
wget -O ~/Downloads/jetbrains.tar.gz "https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.22.10774.tar.gz"
cd ~/Downloads
tar -zxvf jetbrains.tar.gz
cd jetbrains-toolbox*
./jetbrains-toolbox


echo "---------------------------------------------"
echo "# FINALIZANDO"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

