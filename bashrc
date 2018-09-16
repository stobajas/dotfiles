# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bash/powerline.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f ~/.gtestrc ]  && source ~/.gtestrc

[ -f /usr/bin/vimx ] && export EDITOR=/usr/bin/vimx

export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

export KEYTIMEOUT=1

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PYTHON_BIN_PATH="$(python -m site --user-base)/bin"
export PATH="$PATH:$PYTHON_BIN_PATH"

alias vi='vimx'
alias vim='vimx'
alias grd="git review -d"
alias gs="git status"
alias gc="git commit"
alias gca="git commit --amend"
alias gaa="git add -A"
alias gpg="gpg2"
alias cqfdr="cqfd run make"

function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# Creates an archive (*.tar.gz) from given directory.
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Create a ZIP archive of a file or folder.
function makezip() { zip -r "${1%%/}.zip" "$1" ; }

# Make your directories and files access rights sane.
function sanitize() { chmod -R u=rwX,g=rX,o= "$@" ;}

function sshproxy () { ssh -D 8080 -f -C -q -N "$USER"@mtl.savoirfairelinux.net; }
