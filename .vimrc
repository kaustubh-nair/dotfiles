set nocompatible              
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'

Plugin 'easymotion/vim-easymotion'
call vundle#end()            
filetype plugin indent on    
syntax on
set background=dark     " you can use `dark` or `light` as your background
colorscheme molokai
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number "show line numbers
set t_Co=256
nnoremap gh <C-W><C-H>
nnoremap gj <C-W><C-J>
nnoremap gk <C-W><C-K>
nnoremap gl <C-W><C-L>
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

imap hh <Esc>
imap ff <Esc>:w<Enter>
imap fhfh <Esc>:wq<Enter>
imap NRD <Esc>:NERDTree<Enter>
