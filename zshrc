# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
# required for gpg agent config
GPG_TTY=$(tty)

plugins=(git pass screen rsync vagrant docker dnf python tig)

export KEYTIMEOUT=1

# require for gpg-agent config
export GPG_TTY


source $ZSH/oh-my-zsh.sh
source ~/.profile
source ~/dotfiles/alias_
source ~/dotfiles/functions_
source ~/dotfiles/common_
source ~/dotfiles/path_

#must be in that order
set -o vi
source ~/.fzf.zsh

