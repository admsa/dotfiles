#!/usr/bin/env bash

# Install required apps
sudo apt-get install -yq 
	git vim \
	tmux \
	zsh \
	git-core \
	exuberant-ctags \
	silversearcher-ag

# Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

# Install Python pip
sudo apt-get install python-pip -yq
sudo pip install powerline-status
git clone https://github.com/powerline/fonts.git && cd fonts && sh ./install.sh

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Reboot
sudo reboot

