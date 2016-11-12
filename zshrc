# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"

plugins=(gpg git pass screen rsync vagrant rbenv rake gem bundler)

#Homebrew
if [ -d /usr/local/Cellar ]; then
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

bindkey -v

export EDITOR=/usr/bin/vi
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

alias gc="git commit"
alias gaa="git add -A"

alias gpg="gpg2"
alias bb="sh /home/aleblanc/sfl/.gerrit/build.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZSH/oh-my-zsh.sh
