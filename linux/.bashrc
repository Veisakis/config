# .bashrc

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
		echo " (Git)*"
	elif [ $(git status 2> /dev/null | wc -l) -gt 0 ] 
	then
		echo " (Git)"
	fi
}

PS1='\[\033[1;33m\]\u\[\033[1;36m\]@\[\033[33m\]\h\[\033[1;36m\]:\[\033[34m\]\W\[\033[1;36m\]\$\[\033[1;31m\]$(git_repo)\[\033[00m\] '

#Custom Aliases
alias ll='ls -la'
alias ds='cd ~/Desktop'
alias sc='cd ~/scripts'
alias dl='cd ~/Downloads'
alias sx='sxiv'
alias za='zathura'
alias site='ssh pi@192.168.1.11'
alias msync='rsync -arv --exclude=".*" /run/media/manousos/Archive/MM/* /run/media/manousos/exFAT/MM/'

#Environment Variables
