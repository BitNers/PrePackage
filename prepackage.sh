#!/bin/bash

sudo apt update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common\
    tmux \
    python \
    python3 \
    preload \
    htop

#Mongo DB Public key
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

#Windscribe Public Key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7

#Docker Public Key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint	 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu"

#Atom GitHub
sudo add-apt-repository ppa:webupd8team/atom

#Flat Remix Gnome GitHub
sudo add-apt-repository ppa:daniruiz/flat-remix

#==============instalação============#
sudo apt-get update

sudo apt install -y windscribe-cli

sudo apt install -y docker-ce docker-ce-cli containerd.io

sudo apt install -y atom
sudo snap install atom

sudo apt install -y r-base

sudo apt install -y mongodb-org

sudo apt install -y default-jre
sudo apt install -y default-jdk
sudo snap install --classic eclipse

sudo apt install -y lm-sensors
sudo apt install -y zsh

#instalação do FlatRemixGnome
sudo apt install -y flat-remix-gnome
git clone https://github.com/daniruiz/flat-remix-gnome
mv flat-remix-gnome ~/.themes


#instalação do Xampp
mkdir ~/ApacheInstaller
cd ~/ApacheInstaller
wget https://www.apachefriends.org/xampp-files/7.2.2/xampp-linux-x64-7.2.2-0-installer.run
sudo chmod +x xampp-linux-x64-7.2.2-0-installer.run

sudo ./xampp-linux-x64-7.2.2-0-installer.run
sudo apt upgrade

# Chaves públicas: MongoDB, Windscribe, Docker
# Instalar Default-JRE
# Eclipse, MongoDB, Atom, Xampp, Windscribe, Python Python3, R-Core
#Tmux, Flat-remix, htop, 
