set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" core functinality
Plugin 'junegunn/fzf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'

" theme
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on
syntax on
color dracula

set t_Co=256
set number
set statusline+=%#warningmsg#
set statusline+=%*
set rnu
set hlsearch
set mouse=a

" indend
set noexpandtab
set softtabstop=0
set shiftwidth=4
set tabstop=4
set laststatus=2
set backspace=2

set list
set listchars=tab:>\ ,extends:\#

let g:ycm_global_ycm_extra_conf = '~/dotfiles/ycm_extra_conf.py'

let g:fzf_layout = { 'down': '20%' }
let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme= 'molokai'
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
au BufRead,BufNewFile jenkinsfile setfiletype groovy
