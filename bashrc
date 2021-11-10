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
alias msync='rsync -arv --exclude=".*" /run/media/manousos/Archive/MM/* /run/media/manousos/exFAT/MM/'

#custom variables
export GOV_API='cae197251734baf5d81483596ac52d81cb41b779'
export GITHUB_TOKEN='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'
