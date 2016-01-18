# Path to your oh-my-zsh installation.
export ZSH=/Users/macmata/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

ZSH_THEME="robbyrussell"
plugins=(git brew pass screen rsync vagrant rbenv rake gem)

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export GEM_PATH=/Users/macmata/.gem/ruby/2.0.0

source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

eval "$(rbenv init -)"

bindkey -v
