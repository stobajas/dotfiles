set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic.git'
Plugin 'WolfgangMehner/vim-plugins.git'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'vim-ruby/vim-ruby'
Plugin 'fatih/vim-go'
Plugin 'wting/rust.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'dracula/vim'
Plugin 'junegunn/fzf'
Plugin 'Valloric/YouCompleteMe'
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
let g:syntastic_c_remove_include_errors = 1

let g:fzf_layout = { 'down': '~40%' }
let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'down': '~40%' }

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF

au BufRead,BufNewFile *.mrb setfiletype ruby

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
