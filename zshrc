# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerline"

plugins=(zsh gpg git pass screen rsync vagrant docker dnf python tig)

export EDITOR=/usr/bin/vimx
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PYTHONPATH="${PYTHONPATH}:/usr/lib/python2.7/site-packages:/usr/lib/python3.6/site-packages:/usr/local/lib/python3.6/site-packages"

# no need to ./myapp all the time
export POWERLINE_HIDE_USER_NAME="true"
export POWERLINE_HIDE_HOST_NAME="true"
export POWERLINE_DISABLE_RPROMPT="true"
export POWERLINE_DETECT_SSH="true"
export POWERLINE_PATH="short"

alias vi='vimx'
alias vim='vimx'
alias grd="git review -d"
alias gs="git status"
alias gc="git commit"
alias gca="git commit --amend"
alias gaa="git add -A"
alias gpg="gpg2"
alias cqfdr="cqfd run make"


source $ZSH/oh-my-zsh.sh
set -o vi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

n() {
    $EDITOR ~/notes/"$*".txt
}

nls() {
    nls() { tree -CR --noreport ~/notes | awk '{ if ((NR > 1) gsub(/.txt/,"")); if (NF==1) print $1; else if (NF==2) print $2,$3; else if (NF==3) printf "  %s\n", $3 }' ;}
}


#https://github.com/bt3gl/Dotfiles-and-Bash-Examples
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

function sshproxy () { ssh -D 8080 -f -C -q -N aleblanc@mtl.savoirfairelinux.net; }

source $HOME/.gtestrc


