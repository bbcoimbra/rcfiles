set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tsaleh/vim-align'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim'
Bundle 'elzr/vim-json'


if has("gui_running")
    set guioptions=egmrt
    set showtabline=2
endif

""" fix for some stupid terms
if &term == "screen"
	set term=xterm
	set termencoding="utf-8"
endif

""" set terminal encoding properly
set termencoding="utf-8"

""" some simbols to blank chars
if &termencoding == "utf-8"
	set listchars=tab:▹\ ,eol:¬
	set list
endif

set nocompatible
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set noeol
set binary

""" temporary files on one place (stolen from sryche/vimfiles on github)
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

""" autocomplete config
set wildmode=list:longest,full

""" show mode in use (insert, visual, ...)
set showmode
set showcmd

""" mouse behavior like in terminal (without X)
set mouse=c

""" no wrap lines (duh!)
set nowrap

""" indent control
set autoindent
set smartindent

""" show match parentesis
set showmatch

""" statusline config
""" %y = file type
""" %t = file name
""" %l = current line
""" %c = current column
""" %V = current virtual column
""" %P = position into file
set laststatus=2
set statusline=%y\ %t\ %=\ %(%-l,%-c%-V\ %-P%)

""" show reduced msgs
set shm=filmnrwxt

set linebreak

""" syntax colors
syntax on
filetype on
filetype indent on
filetype plugin on
compiler ruby

colorscheme default
set background=dark

""" remapping leader to comma key
let mapleader = ","

nmap <leader>f :set foldmethod=indent<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>t :TlistToggle<CR>
nmap <leader>w <c-w>w

""" some sanite mappings
cab WQ wq | cab Wq wq | cab W w | cab Q q

""" Filetype specific settings
au Filetype ruby set expandtab encoding=utf8
au Filetype haml set ts=2 noet encoding=utf8
au Filetype erb set ts=2 noet encoding=utf8
au FileType yaml set encoding=utf8
au FileType ant set encoding=utf8
au FileType tex set encoding=utf8 tw=78 noet spell spelllang=pt-BR

