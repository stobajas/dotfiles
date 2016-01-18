# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

ZSH_THEME="robbyrussell"
plugins=(git brew pass screen rsync vagrant rbenv rake gem)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"


bindkey -v
