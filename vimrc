set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" core functinality
Plugin 'junegunn/fzf'
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'tpope/vim-fugitive' " Git wapper for vim
Plugin 'scrooloose/nerdtree'
Plugin 'Nopik/vim-nerdtree-direnter'

" theme
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline-themes'

" framework/lang
Plugin 'kergoth/vim-bitbake'

" snippet
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'

"coding style
Plugin 'vivien/vim-linux-coding-style'

"
Plugin 'kien/ctrlp.vim'

Plugin 'majutsushi/tagbar'

call vundle#end()

filetype plugin indent on
syntax on
color dracula

set t_Co=256
set number
set rnu
set hlsearch
set mouse=a
set wildmenu
set wildmode=longest:full,full
set noswapfile

"  spellcheck english
"  z= to get word list
set spell

" set spellcheck for en_us
set spell spelllang=en_us

" deactivate preview
set completeopt-=preview

set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=%{fugitive#statusline()}

" Indend
set noexpandtab
set softtabstop=0
set shiftwidth=4
set tabstop=4
set laststatus=2
set backspace=2

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set noswapfile
set nowb

" Set visual reference for tab
set list
set listchars=tab:>\ ,extends:\#

let g:ycm_global_ycm_extra_conf = '~/dotfiles/ycm_extra_conf.py'
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_add_preview_to_completeopt = 0

let g:fzf_layout = { 'down': '20%' }
let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMapOpenVSplit='<ctrl-v>'
let NERDTreeMapOpenSplit='<ctrl-x>'

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

let g:ale_cpp_clang_options = '-std=c++11 -Wall'
let g:ale_echo_msg_error_str = 'Ale Error'
let g:ale_echo_msg_warning_str = 'Ale Warning'

let g:ale_cpp_clangtidy_options = '-Wall -std=c++11 -x c++'
let g:ale_cpp_clangcheck_options = '-- -Wall -std=c++11 -x c++'
let g:ale_cpp_clang_options = '-Wall -std=c++11 -x c++'
let g:ale_cpp_gcc_options = '-Wall -std=c++11 -x c++'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:vim_ctags__jump_behaviors = { 'before': 'tabnew', 'after': 'norm zvzz' }

nmap <C-B> :TagbarToggle<CR>
map <C-N> :NERDTreeToggle<CR>
map <C-F> :FZF<CR>

map <S-M> :YcmCompleter GoToDefinition<CR>
map <S-N> :YcmCompleter GoToDeclaration<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

au BufRead,BufNewFile *.mrb setfiletype ruby
au BufRead,BufNewFile jenkinsfile setfiletype groovy
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
