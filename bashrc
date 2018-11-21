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
	export POWERLINE_HIDE_USER_NAME="true"
	export POWERLINE_HIDE_HOST_NAME="true"
	export POWERLINE_DISABLE_RPROMPT="true"
	export POWERLINE_DETECT_SSH="true"
	export POWERLINE_PATH="short"
fi

source ~/dotfiles/alias_
source ~/dotfiles/functions_
source ~/dotfiles/common_
source ~/dotfiles/path_
source ~/dotfiles/do_not_commit_
