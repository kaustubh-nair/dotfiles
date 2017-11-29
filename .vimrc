set nocompatible              
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'joshdick/onedark.vim' 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'alvan/vim-closetag'
Plugin 'tomasr/molokai'
Plugin 'mattn/emmet-vim'
Plugin 'morhetz/gruvbox'
Plugin 'easymotion/vim-easymotion'
call vundle#end()            
filetype plugin indent on    
syntax on
set background=dark     
colorscheme gruvbox
set tabstop=4
set encoding=utf-8
set fileencodings=utf-8
set clipboard=unnamed
set laststatus=2
set noshowmode
set noswapfile
set relativenumber
set softtabstop=4
set shiftwidth=4
set expandtab
set number 
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
nmap ff :q<Enter> 
imap fhfh <Esc>:wq<Enter>
nmap <C-G> gr
nmap <C-V> gR
nmap <F8> :NERDTree<Enter>
nmap <F9> :TagbarToggle<Enter>

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 
imap <C-O> <Tab>
imap <Tab> <C-P>


let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0

