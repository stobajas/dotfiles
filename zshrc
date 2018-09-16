# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"

plugins=(zsh gpg git pass screen rsync vagrant docker dnf python tig)

export KEYTIMEOUT=1

export POWERLINE_HIDE_USER_NAME="true"
export POWERLINE_HIDE_HOST_NAME="true"
export POWERLINE_DISABLE_RPROMPT="true"
export POWERLINE_DETECT_SSH="true"
export POWERLINE_PATH="short"

source $ZSH/oh-my-zsh.sh
source ~/.profile
source ~/dotfiles/alias_
source ~/dotfiles/functions_
source ~/dotfiles/common_
source ~/dotfiles/path_

set -o vi
