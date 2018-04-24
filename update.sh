#!/bin/sh

rm -rf termite
rm -rf i3
rm -rf ranger
rm -rf polybar
rm vim/.vimrc
rm zsh/.zshrc
rm zsh/.zprofile
rm .Xmodmap


cp -r ~/.config/termite ~/dotfiles
cp -r ~/.config/i3 ~/dotfiles
cp -r ~/.config/ranger ~/dotfiles
cp -r ~/.config/polybar ~/dotfiles
cp ~/.zprofile ~/dotfiles/zsh
cp ~/.vimrc ~/dotfiles/vim
cp ~/.zshrc ~/dotfiles/zsh
cp ~/.Xmodmap ~/dotfiles

git add .
git commit -m "update dotfile"
git push


