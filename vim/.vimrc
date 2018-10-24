set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'chrisbra/csv.vim'
Plugin 'roosta/vim-srcery'
Plugin 'pseewald/vim-anyfold'
Plugin 'larssmit/vim-getafe'
Plugin 'shime/vim-livedown'
Plugin 'mattn/calendar-vim'
Plugin 'junegunn/fzf'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'alvan/vim-closetag'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'rakr/vim-one'

call vundle#end()       
filetype plugin indent on
syntax on
set background=dark
colorscheme srcery
set tabstop=2
set encoding=utf-8
set fileencodings=utf-8
set clipboard=unnamed
set laststatus=2
set noshowmode
set noswapfile
set relativenumber
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set t_Co=256
set termguicolors
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>
nmap <F8> :NERDTree<Enter>
nmap <F9> :TagbarToggle<CR>
imap <Tab> <C-P>
nmap <C-o> :FZF<Enter>
nnoremap zs :w<CR>
nnoremap zz :wq<CR>
nnoremap zq :q!<CR>
let mapleader = "\<Space>"

let g:airline_theme='raven'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:fzf_action = {
      \ 'ctrl-o': 'tab split' }
"closetag for erb
let g:closetag_filenames = '*.html, *.erb, *.md'


let g:tagbar_type_python = {
    \ 'kinds' : [
        \ 'i:imports:1:0',
        \ 'c:classes',
        \ 'f:functions',
        \ 'm:members',
        \ 'v:variables:1:0',
        \ '?:unknown',
        \ 'p:prototypes:1:0',
    \ ],
\ }

nmap <C-M> :LivedownToggle<CR>
let anyfold_activate=1
set foldlevel=1000000
