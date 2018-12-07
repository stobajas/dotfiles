r=$(lsusb |  grep -o '1050:0407')
# test for yubico key
if [ "$r" = "1050:0407" ]; then
	`killall gpg-agent`
	if [ -z "$GPG_AGENT_INFO" ]; then
		eval "$(gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf)"
	fi

	if [ -z "$SSH_AUTH_SOCK" ]; then
		SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
		export SSH_AUTH_SOCK
	fi
else
	ssh-add ~/.ssh/id_rsa
fi
