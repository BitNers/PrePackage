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
    htop \
    git

#Mongo DB Public key
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

#Windscribe Public Key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7

#Docker Public Key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint	 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu"

#Telegram Public Key
sudo add-apt-repository ppa:atareao/telegram

#==============instalação============#
sudo apt-get update

sudo apt install -y windscribe-cli

sudo apt install -y docker-ce docker-ce-cli containerd.io

sudo apt install -y r-base

sudo apt install -y mongodb-org

sudo apt install -y default-jre
sudo apt install -y default-jdk
sudo snap install -y --classic eclipse

sudo apt install -y lm-sensors
sudo apt install -y zsh

sudo apt install -y gnome-tweak-tool

sudo apt install -y telegram
sudo snap install -y telegram-desktop

sudo apt install -y apache2
