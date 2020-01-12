set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'powerline/powerline'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugininList       - lists configured plugins
" :PlugininInstall    - installs plugins; append `!` to update or just :PlugininUpdate
" :PlugininSearch foo - searches for foo; append `!` to refresh local cache
" :PlugininClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Pluginin stuff after this line

syntax enable
colorscheme gruvbox
set bg=dark
highlight Normal ctermbg=None

set number " use line numbers
" set config for tabs
set tabstop=4
set softtabstop=4
set expandtab

set cursorline " highlight the line the cursor is on

set wildmenu
set lazyredraw
set showmatch

" reload vim on changes to .vimrc
autocmd! bufwritepost .vimrc source %
