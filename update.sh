#!/bin/sh

rm -rf ~/dotfile/termite
rm -rf ~/dotfile/i3
rm -rf ~/dotfile/ranger
rm -rf ~/dotfile/polybar
rm ~/dotfile/vim/.vimrc
rm ~/dotfile/zsh/.zshrc
rm ~/dotfile/zsh/.zprofile
rm ~/dotfile/.Xmodmap
rm -rf ~/dotfile/zsh/.oh-my-zsh/


cp -r ~/.config/termite ~/dotfiles
cp -r ~/.config/i3 ~/dotfiles
cp -r ~/.config/ranger ~/dotfiles
cp -r ~/.config/polybar ~/dotfiles
cp ~/.zprofile ~/dotfiles/zsh
cp ~/.vimrc ~/dotfiles/vim
cp ~/.zshrc ~/dotfiles/zsh
cp ~/.Xmodmap ~/dotfiles
cp -r ~/.oh-my-zsh ~/dotfiles/zsh

rm -rf ~/dotfile/zsh/.oh-my-zsh/.git
rm ~/dotfile/zsh/.oh-my-zsh/.gitignore
rm -rf ~/dotfile/zsh/.oh-my-zsh/custon/plugins/zsh-256color/.git
rm -rf ~/dotfile/zsh/.oh-my-zsh/custon/plugins/zsh-autosuggestions/.git


git add .
git commit -m "update dotfiles"
git push


