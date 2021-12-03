#!/bin/bash



echo "---------------------------------------------"
echo "# SAFE SIGN"
echo " "

# OpenSC Tools
while true; do
    read -p "Would like to install OpenSC Tools (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo apt install opensc -y;
        sudo apt install pcscd -y;
        sudo apt install pcsc-tools -y;
        sudo apt install libccid -y;
        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


## CERTIFICADO
## Comandos
# opensc-tool --list-readers
# pcsc_scan

# Referências
# https://extpose.com/ext/61522
# https://www.linkedin.com/in/fl%C3%A1vio-nascimento-323a42ab/
# https://diadialinux.wordpress.com/2021/03/30/instalacao-do-token-starsign-gd-no-ubuntu-20-04-e-18-04/
# http://blogoosfero.cc/sergiobertoni/blog-do-bertoni/e-cpf-e-e-cnpj-no-ubuntu-20.04-e-derivados (Segui esse)
while true; do
    read -p "Would like to install SafeSing  (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        wget -O ~/Downloads/safesign.zip "https://s3-sa-east-1.amazonaws.com/shared-www.validcertificadora.com.br/Downloads/Safesign/Safesign.zip";
        sudo unzip ~/Downloads/safesign.zip  -d ~/Downloads/safesign/;

        sudo dpkg -i ~/Downloads/safesign/libgdbm3_1.8.3-14_amd64.deb;
        sudo dpkg -i ~/Downloads/safesign/libjpeg62-turbo_1.5.2-2+b1_amd64.deb;

        wget -O ~/Downloads/multiarch-support_2.27-3ubuntu1_amd64.deb "http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/multiarch-support_2.27-3ubuntu1_amd64.deb";
        sudo dpkg -i ~/Downloads/multiarch-support_2.27-3ubuntu1_amd64.deb;
        sudo rm ~/Downloads/multiarch-support_2.27-3ubuntu1_amd64.deb;

        sudo add-apt-repository ppa:linuxuprising/libpng12 -y;
        sudo apt-get update;
        sudo apt-get install libpng12-0 -y;

        wget -O ~/Downloads/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb "http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb";
        sudo dpkg -i ~/Downloads/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb;
        sudo rm ~/Downloads/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb;

        sudo dpkg -i ~/Downloads/safesign/libwxbase2.8-0_2.8.12.1+dfsg2-dmo4_amd64.deb;
        sudo dpkg -i ~/Downloads/safesign/libwxgtk2.8-0_2.8.12.1+dfsg2-dmo4_amd64.deb;
        sudo dpkg -i ~/Downloads/safesign/SafeSign.deb;

        sudo rm ~/Downloads/safesign.zip;
        sudo rm -r -f ~/Downloads/safesign/;
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
