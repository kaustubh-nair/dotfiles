sudo apt-get -y  update
sudo apt-get -y upgrade
sudo apt-get -y install -y vim zsh 
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vim/.vimrc ~/.vimrc
cp ./zsh/.zshrc ~/.zshrc
cp -r ./zsh/.oh-my-zsh ~/.oh-my-zsh
source ~/.zshrc
vim +PluginInstall +qall



