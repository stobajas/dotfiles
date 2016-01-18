set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'WolfgangMehner/vim-plugins.git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
call vundle#end()           
filetype plugin indent on  
syntax on
color dracula
set t_Co=256
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set laststatus=2

#source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

inoremap <Nul> <C-n>
