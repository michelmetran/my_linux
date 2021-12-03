---
title: "Apps"
excerpt_separator: "<!--more-->"
tags: [python, pycharm, jupyter, package]
#layout: post
#subtitle: Exercícios e Referências
#thumbnail-img: /assets/img/posts/jupyter_icon.png
#cover-img: /assets/img/posts/jupyter_big.png
#share-img: /assets/img/posts/jupyter_big.png
#gh-repo: michelmetran/package_jupyter
#gh-badge: [follow, star, watch, fork]
#comments: true
#language: pt-br

---

### Java

```bash
sudo apt install default-jre
```

Baixa o pacote

https://www.oracle.com/java/technologies/javase-downloads.html

Vai até a pasta de download

```bash
cd ~/Downloads
```

Instala

```bash
sudo apt install ./jdk*.deb
```

**Referências**

https://linuxconfig.org/oracle-java-installation-on-ubuntu-20-04-focal-fossa-linux

## Video

### Kdenlive

**Referência**

[Instalando a versão mais recente do editor de vídeos Kdenlive no Ubuntu](https://www.edivaldobrito.com.br/editor-de-videos-kdenlive-no-ubuntu/)

<br>

### NVidia

https://www.linuxbabe.com/ubuntu/install-nvidia-driver-ubuntu-18-04

<br>

### MESA Driver

```
sudo add-apt-repository ppa:kisak/kisak-mesa
sudo apt update
sudo apt install mesa
```

https://itsfoss.com/install-mesa-ubuntu/#comments

<br>

## Escritório

### Pandoc

```bash
sudo apt-get install pandoc
```

<br>

### LaTex

não consegui instar "texlive-generic-recommended" em 20.04

```bash
sudo apt-get install texlive-xetex
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-generic-recommended
sudo apt-get install texlive-plain-generic
```

**Referências**

https://linuxconfig.org/install-virtualbox-on-ubuntu-20-04-focal-fossa-linux

<br>

### LaTex

```bash
sudo apt-get install texmaker
```

**Referência**

https://milq.github.io/install-latex-ubuntu-debian/

<br>

### 7-Zip

http://ubuntuhandbook.org/index.php/2018/10/p7zip-desktop-available-install-ubuntu-18-04/

<br>

### Typora

```bash
# or use
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update

# install typora
sudo apt-get install typora
```

**Referência**

- [Install Typora on Linux](https://support.typora.io/Typora-on-Linux/)

<br>

### Zettlr

```bash
cd ~/Downloads
sudo apt install ./Zettlr*.deb
```

https://www.zettlr.com/download/deb64

<br>

### OCRmyPDF

```bash
sudo apt install ocrmypdf
```

<br>

### Tesseract-OCR

Instalar

```bash
sudo apt-get install tesseract-ocr
```

Error opening data file /usr/share/tesseract-ocr/4.00/tessdata/por.traineddata

Please make sure the TESSDATA_PREFIX environment variable is set to your "tessdata" directory.

Failed loading language \'por\' Tesseract couldn't load any languages!

Could not initialize tesseract.

Download

```bash
wget https://github.com/tesseract-ocr/tessdata/raw/master/por.traineddata
```

Move

```bash
sudo mv -v por.traineddata /usr/share/tesseract-ocr/4.00/tessdata/
```

Download

```bash
wget https://github.com/tesseract-ocr/tessdata/raw/master/eng.traineddata
```

Move

```bash
sudo mv -v eng.traineddata /usr/share/tesseract-ocr/4.00/tessdata/
```

## Mídia

### Kodi

```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get install kodi
```

**Referência**

- https://www.youtube.com/watch?v=ZLVLUBWLQts
- https://kodi.wiki/view/HOW-TO:Install_Kodi_for_Linux

<br>

### Codecs

```bash
sudo apt update && sudo apt install libdvdnav4 libdvd-pkg gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly libdvd-pkg ubuntu-restricted-extras
```

```bash
sudo dpkg-reconfigure libdvd-pkg
```

**Referências**

- https://websiteforstudents.com/how-to-enable-ubuntu-18-04-lts-beta-to-play-videos-files

<br>

## Geoprocessamento

<br>

### FileGDB API

Baixa o pacote (# não deu certo, fiz o download manualmente)

```bash
wget https://github.com/Esri/file-geodatabase-api/blob/master/FileGDB_API_1.5/FileGDB_API_1_5_64.tar.gz
```

```bash
# Vai para a pasta do Dowload
cd Downloads

# Descompacta
tar -zxvf FileGDB_API*.tar.gz

# Move
sudo mv FileGDB_API-64*/ /opt/

# Acessa
cd /opt/FileGDB_API-64*

#
export LD_LIBRARY_PATH=`pwd`/lib
cd samples
make
#sudo cp ../lib/* /usr/local/lib
sudo ldconfig

# ddd
which gdalinfo

# repar
sudo mv /usr/local/lib/lib* /home/michel/


# Tá no README do unzip
sudo apt-get install freeglut3-dev

# Deleta
sudo rm -r /opt/FileGDB_API-64
```

```bash
echo '/opt/FileGDB_API-64gcc51/lib' > /etc/ld.so.conf
sudo gedit /etc/ld.so.conf
```

Instala

```bash
echo "export FileGDB_HOME=/opt/FileGDB_API-64" >> ~/.bashrc

# Referências
# https://geodacenter.github.io/setup-esri-fgdb.html
```

```bash
./configure --with-fgdb=/opt/FileGDB_API-64
make
make install
```

https://trac.osgeo.org/gdal/wiki/FileGDB

https://gis.stackexchange.com/questions/292506/how-do-i-install-esri-file-gdb-api-in-ubuntu-16-04-so-qgis-2-8-can-see-it

https://wiki.wildsong.biz/index.php/Building_GDAL_on_Linux#ESRI_file_geodatabases

```bash
ogrinfo --formats|sort
```

**Referências**

https://askubuntu.com/questions/1087150/install-gcc-5-on-ubuntu-18-04

https://github.com/Esri/file-geodatabase-api/tree/master/FileGDB_API_1.5.1

https://proceedings.esri.com/library/userconf../devsummit18/papers/dev-int-208.pdf

### Outros

```bash
sudo apt install build-essential libglvnd-dev pkg-config
```

Listar todos os programas

```bash
sudo apt-get install aptitude
aptitude -F' * %p -> %d ' --no-gui --disable-columns search '?and(~i,!?section(libs), !?section(kernel), !?section(devel))'
```

## Códigos

### VIM

Instalei o VIM seguindo https://www.simplified.guide/ubuntu/install-vim

Sair do VIM é ESC e :qw

https://stackoverflow.com/questions/11828270/how-do-i-exit-the-vim-editor

<br>

### PhantonJS

First, install or update to the latest system software.

```bash
sudo apt-get update
sudo apt-get install build-essential chrpath libssl-dev libxft-dev
```

Install these packages needed by PhantomJS to work correctly.

```bash
sudo apt-get install libfreetype6 libfreetype6-dev
sudo apt-get install libfontconfig1 libfontconfig1-dev
```

Get it from the [PhantomJS website](http://phantomjs.org/).

```bash
cd ~
export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64"
wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
sudo tar xvjf $PHANTOM_JS.tar.bz2
```

Once downloaded, move Phantomjs folder to `/usr/local/share/` and create a symlink:

```bash
sudo mv $PHANTOM_JS /usr/local/share
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
```

Now, It should have PhantomJS properly on your system.

```bash
phantomjs --version
```

**Referência**

https://gist.github.com/julionc/7476620

### Draw.io

```bash
sudo snap install drawio
```

https://snapcraft.io/install/drawio/ubuntu

### XAMPP

```bash
wget "https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/7.4.8/xampp-linux-x64-7.4.8-0-installer.run/download" -O xampp-installer.run

chmod +x xampp-installer.run
sudo ./xampp-installer.run

echo -e '[Desktop Entry]\n Version=1.0\n Name=xampp\n Exec=gksudo /opt/lampp/manager-linux-x64.run\n Icon=/opt/lampp/icons/world1.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/xampp.desktop
```

Para possibilitar alteração de arquivos

```
sudo chown -R michel:michel /opt/lampp/htdocs
```

```
sudo cp -r /home/michel/Documents/Arquivos/Downloads/curriculo /opt/lampp/htdocs
```

https://www.edivaldobrito.com.br/como-instalar-o-xampp-no-linux/

https://askubuntu.com/questions/942488/xampp-apache-web-server-stopped-ubuntu

### NPM

```bash
#
sudo apt install npm
```

```bash
npm init
npm install --save react@16.8.6 react-dom@16.8.6 react-scripts@3.0.1
```

<br>
