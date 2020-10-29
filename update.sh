#!/bin/bash
shopt -s extglob

if [ $(pwd) == /home/k/dotfiles ]
then
  rm -rf !(.git|update.sh|.|..)
fi

cp -r ~/.config/i3 ~/dotfiles
cp -r ~/.config/polybar ~/dotfiles
mkdir zsh
mkdir nvim
cp ~/.zprofile ~/dotfiles/zsh
cp ~/.zshrc ~/dotfiles/zsh
cp ~/.xbindkeysrc ~/dotfiles/.
cp ~/.config/nvim/init.vim ~/dotfiles/nvim/.
cp -r /etc/X11 ~/dotfiles


git add .
git commit -m "update dotfiles"
git push origin master

