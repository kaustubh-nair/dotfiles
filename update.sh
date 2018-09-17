#!/bin/bash

shopt -s extglob

if [ $(pwd) == /home/k/dotfiles ]
then
  rm -rf !(.git|update.sh|.|..)
fi

cp -r ~/.config/termite ~/dotfiles
cp -r ~/.config/i3 ~/dotfiles
cp -r ~/.config/ranger ~/dotfiles
cp -r ~/.config/polybar ~/dotfiles
mkdir zsh
mkdir vim
cp ~/.zprofile ~/dotfiles/zsh
cp ~/.vimrc ~/dotfiles/vim
cp ~/.zshrc ~/dotfiles/zsh
cp ~/.xmodmap-archlinux ~/dotfiles/.xmod
cp -r ~/.oh-my-zsh ~/dotfiles/zsh
cp -r /etc/X11 ~/dotfiles

rm -rf ~/dotfile/zsh/.oh-my-zsh/.git
rm -rf ~/dotfile/zsh/.oh-my-zsh/custom/plugins/zsh-256color/.git
rm -rf ~/dotfile/zsh/.oh-my-zsh/custom/plugins/zsh-autosuggestions/.git
rm -rf ~/dotfile/zsh/.oh-my-zsh/plugins/alien-minimal/.git


git add .
git commit -m "update dotfiles"
git push


