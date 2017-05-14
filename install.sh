#!/usr/bin/env bash

#Install zsh
sudo apt-get install zsh
sudo apt-get install git-core

#Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

#Install Python pip
sudo apt-get install python-pip
sudo pip install powerline-status
git clone https://github.com/powerline/fonts.git && cd fonts && sh ./install.sh

#Install exuberant-ctags
sudo apt-get install exuberant-ctags

#Install silver searcher
sudo apt-get install silversearcher-ag

#Reboot
sudo reboot

