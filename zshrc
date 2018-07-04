# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"

plugins=(zsh gpg git pass screen rsync vagrant docker dnf python tig)

export EDITOR=/usr/bin/vimx
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PYTHON_BIN_PATH="$(python -m site --user-base)/bin"
export PATH="$PATH:$PYTHON_BIN_PATH"

export POWERLINE_HIDE_USER_NAME="true"
export POWERLINE_HIDE_HOST_NAME="true"
export POWERLINE_DISABLE_RPROMPT="true"
export POWERLINE_DETECT_SSH="true"
export POWERLINE_PATH="short"


source $ZSH/oh-my-zsh.sh
source ~/.profile
source ~/dotfiles/alias_
source ~/dotfiles/functions_
set -o vi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

