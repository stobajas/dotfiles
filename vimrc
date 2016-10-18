set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic.git'
Plugin 'scrooloose/nerdtree'
Plugin 'WolfgangMehner/vim-plugins.git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'fatih/vim-go'
Plugin 'wting/rust.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'dracula/vim'
Plugin 'junegunn/fzf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
set backspace=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set rnu
set hlsearch
set mouse=a

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1

let g:ycm_global_ycm_extra_conf = '~/dotfiles/ycm_extra_conf.py'  

let g:fzf_layout = { 'down': '20%' }
let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme= 'serene'
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'


map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

au BufRead,BufNewFile *.mrb setfiletype ruby

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
