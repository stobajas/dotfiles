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
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'vim-ruby/vim-ruby'
Plugin 'fatih/vim-go'
Plugin 'wting/rust.vim'
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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

if has('mac')
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
else 
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/plugin/powerline.vim
endif

inoremap <Nul> <C-n>
map <C-n> :NERDTreeToggle<CR>
