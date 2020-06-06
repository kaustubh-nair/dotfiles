set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'junegunn/goyo.vim'
Plugin 'connorholyday/vim-snazzy'
Plugin '907th/vim-auto-save'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'chrisbra/csv.vim'
Plugin 'roosta/vim-srcery'
Plugin 'larssmit/vim-getafe'
Plugin 'lervag/vimtex'
Plugin 'shime/vim-livedown'
Plugin 'junegunn/fzf'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'alvan/vim-closetag'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'tpope/vim-surround'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'rakr/vim-one'
Plugin 'zxqfl/tabnine-vim'

call vundle#end()       
so ~/.vim/plugins/a.vim
filetype plugin indent on
syntax on
set background=dark
colorscheme snazzy
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
set termguicolors
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>
nmap <F8> :NERDTree<Enter>
nmap <F9> :TagbarToggle<CR>
imap <Tab> <C-P>
imap <C-L> <F7> 
nmap <C-o> :FZF<Enter>
nmap <C-A> :Ag<Enter>
nmap <C-W> :A<Enter>
nnoremap zs :w<CR>
nnoremap zz :wq<CR>
nnoremap zq :q!<CR>
let mapleader = "\<Space>"
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_tranparent = 0
    endif
endfunction

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
let g:goyo_width = 190
let g:goyo_height = 140
let g:goyo_linenr = 0
nmap <C-g> :Goyo<CR>
autocmd Filetype tex setl updatetime=1
let g:livepreview_engine = 'pdflatex'


let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

autocmd BufReadPost * call ToggleHiddenAll()
autocmd VimEnter * AutoSaveToggle
let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'cpp': 'cpp','rust':'rust', 'ocaml': 'ocaml'}
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let g:vimwiki_list = [wiki]
