# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

#Custom prompt
git_repo () {
	if [ $(git status 2> /dev/null | wc -l) -gt 0 ] && [ $(git status -s 2> /dev/null | wc -l) -gt 0 ] 
	then
		echo "  *"
	elif [ $(git status 2> /dev/null | wc -l) -gt 0 ] 
	then
		echo "  "
	fi
}
PS1='\[\033[1;33m\]\u\[\033[1;36m\]@\[\033[33m\]\h\[\033[1;36m\]:\[\033[34m\]\W\[\033[1;36m\]\$\[\033[1;31m\]$(git_repo)\[\033[00m\] '


#Custom Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias ds='cd ~/Desktop'
alias sc='cd ~/scripts'
alias dl='cd ~/Downloads'
alias sx='sxiv'
alias za='zathura'
alias site='ssh pi@192.168.1.11'
alias msync='rsync -arv --exclude=".*" /media/manousos/Archive/MM/* /run/media/manousos/Movies/'
alias tra='transmission-remote --torrent-done-script ~/scripts/i3/torrent.sh -a '
alias trl='transmission-remote -l'

#Environmental Variables
export EDITOR=/usr/bin/vim

#Shell Variables
#Tokens
GOV_API='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'
TELEGRAM_TOKEN="5380255189:AAHbXvG9ZlU6d-ei0dsVXPepUK_mv6e7uLQ"
TELEGRAM_CHATID="-642690481"
