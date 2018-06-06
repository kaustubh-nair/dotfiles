#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y vim
sudo apt-get install -y zsh
sudo wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -

apt-get update
apt-get -y upgrade
apt-get install -y vim
apt-get install -y zsh
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -

chsh -s /bin/zsh
cp ./vim/.vimrc ~/.vimrc
cp ./zsh/.zshrc ~/.zshrc
cp -r ./zsh/.ooh-my-zsh ~/.oh-my-zsh
source ~/.zshrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall



