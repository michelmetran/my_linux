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
    read -p "Would like to set directories-first in Nautilus (y/n)? " PROMPT
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
    read -p "Would like to minimize apps on click (y/n)? " PROMPT
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


