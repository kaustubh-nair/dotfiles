#!/bin/sh

rm -rf ~/dotfiles/termite
rm -rf ~/dotfiles/i3
rm -rf ~/dotfiles/ranger
rm -rf ~/dotfiles/polybar
rm ~/dotfiles/vim/.vimrc
rm ~/dotfiles/zsh/.zshrc
rm ~/dotfiles/zsh/.zprofile
rm ~/dotfiles/.xmodmap-archlinux
rm -rf ~/dotfiles/zsh/.oh-my-zsh/


cp -r ~/.config/termite ~/dotfiles
cp -r ~/.config/i3 ~/dotfiles
cp -r ~/.config/ranger ~/dotfiles
cp -r ~/.config/polybar ~/dotfiles
cp ~/.zprofile ~/dotfiles/zsh
cp ~/.vimrc ~/dotfiles/vim
cp ~/.zshrc ~/dotfiles/zsh
cp ~/.xmodmap-archlinux ~/dotfiles
cp -r ~/.oh-my-zsh ~/dotfiles/zsh

rm -rf ~/dotfile/zsh/.oh-my-zsh/.git
rm ~/dotfile/zsh/.oh-my-zsh/.gitignore
rm -rf ~/dotfile/zsh/.oh-my-zsh/custon/plugins/zsh-256color/.git
rm -rf ~/dotfile/zsh/.oh-my-zsh/custon/plugins/zsh-autosuggestions/.git


git add .
git commit -m "update dotfiles"
git push


