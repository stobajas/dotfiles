# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

ZSH_THEME="robbyrussell"

plugins=(git brew pass screen rsync vagrant rbenv rake gem bundler)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

if [ -d $HOME/.gem/ruby/2.0.0 ]; then 
    export GEM_PATH=/Users/macmata/.gem/ruby/2.0.0
fi    

#Homebrew
if [ -d /usr/local/bin ]; then
    export PATH=/usr/local/bin:$PATH
    export PATH="/usr/local/sbin:$PATH"
fi

#Homebrew man
if [ -d /User/local/man ]; then 
    echo "homebrew path"
    export MANPATH="/usr/local/man:$MANPATH"
fi    

# Use gnu utils instead of os x
if [ -d /usr/local/opt/coreutils/libexec/gnubin ]; then
      MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
      PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" 
fi

#powerline
if [[ "$OSTYPE" == "darwin"* ]]; then 
   if [ -d /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh ]; then
       source  /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
   fi
else
   if [ -d /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh ];then
       source  /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
   fi
fi

bindkey -v


export EDITOR=/usr/bin/vim
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# aliases for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

#alias
alias v='vagrant version && vagrant global-status'
alias vst='vagrant status'
alias vup='vagrant up'
alias vdo='vagrant halt'
alias vssh='vagrant ssh'
alias vkill='vagrant destroy'

alias ber="bundle exec rake"
alias bet="bundle exec spring testunit"
alias bers='bundle exec rake spec'

