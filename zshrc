# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

ZSH_THEME="robbyrussell"

plugins=(git brew pass screen rsync vagrant rbenv rake gem)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

if [ -d $HOME/.gem/ruby/2.0.0 ]; then 
    export GEM_PATH=/Users/macmata/.gem/ruby/2.0.0
fi    

#Homebrew
if [ -d /usr/local/bin ]; then
    export PATH=/usr/local/bin:$PATH
    export PATH=$PATH:/usr/local/sbin
fi

#Homebrew man
if [ -d /User/local/man ]; then 
    export MANPATH="/usr/local/man:$MANPATH"
fi    

# Use gnu utils instead of os x
if [ -d /usr/local/opt/coreutils/libexec/gnubin ]; then
      MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
      PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" 
fi

bindkey -v
