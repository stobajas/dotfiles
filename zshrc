# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"

plugins=(zsh gpg git pass screen rsync vagrant docker dnf python tig)

export KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh
source ~/.profile
source ~/dotfiles/alias_
source ~/dotfiles/functions_
source ~/dotfiles/common_
source ~/dotfiles/path_

set -o vi
