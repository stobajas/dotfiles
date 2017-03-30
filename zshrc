# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerline"

plugins=(zsh gpg git pass screen rsync vagrant rbenv rake gem bundler docker)

export EDITOR=/usr/bin/vimx
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export POWERLINE_HIDE_USER_NAME="true"
export POWERLINE_HIDE_HOST_NAME="true"
export POWERLINE_PATH="short"

alias vi='vimx'
alias vim='vimx'

#aliases for Tmux
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

alias gs="git status"
alias gc="git commit"
alias gca="git commit --amend"
alias gaa="git add -A"

alias gpg="gpg2"

alias cqfdr="cqfd run make"

source $ZSH/oh-my-zsh.sh

#for settign vim binding, need to be before fzf
set -o vi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

n() {
    $EDITOR ~/notes/"$*".txt
}

nls() {
    nls() { tree -CR --noreport ~/notes | awk '{ if ((NR > 1) gsub(/.txt/,"")); if (NF==1) print $1; else if (NF==2) print $2,$3; else if (NF==3) printf "  %s\n", $3 }' ;}
}
