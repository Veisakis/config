# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PATH="$HOME/.local/bin:$HOME/scripts/main:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"
export PATH

#Custom prompt
git_repo () {
	if [ $(git status 2> /dev/null | wc -l) -gt 0 ] && [ $(git status -s 2> /dev/null | wc -l) -gt 0 ] 
	then
		echo " $(echo -e '\uf09b') *"
	elif [ $(git status 2> /dev/null | wc -l) -gt 0 ] 
	then
		echo " $(echo -e '\uf09b') "
	fi
}
PS1='\[\033[1;33m\]\u\[\033[1;36m\]@\[\033[33m\]\h\[\033[1;36m\]:\[\033[34m\]\W\[\033[1;36m\]\$\[\033[1;31m\]$(git_repo)\[\033[00m\] '


#Custom Aliases
alias sx='sxiv'
alias za='zathura'
alias msync='rsync -arv --exclude=".*" /media/Archive/* /run/media/manousos/Movies/'
alias msync-del='rsync -arv --exclude=".*" /media/Archive/* /run/media/manousos/Movies/ --delete'
alias msync-dry='rsync -arv --exclude=".*" --dry-run /media/Archive/* /run/media/manousos/Movies/'
alias tra='transmission-remote --torrent-done-script ~/scripts/i3/torrent.sh -a '
alias trc="transmission-remote -l | awk '/100%/ {fin=\$1; gsub(\"*\",\"\",fin); print fin}' | xargs -i transmission-remote -t{} -r && pkill -SIGRTMIN+7 i3blocks"
alias trl='transmission-remote -l'

#Custom env variables
export EDITOR=/usr/bin/vim

#Shell Variables
#Tokens
GITHUB_TOKEN='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'
DOCKER_TOKEN='8bab85b5-8f5f-49f6-b3ca-687d1806ee44'
GOV_TOKEN='cae197251734baf5d81483596ac52d81cb41b779'
TELEGRAM_TOKEN="5380255189:AAHbXvG9ZlU6d-ei0dsVXPepUK_mv6e7uLQ"
TELEGRAM_CHATID="-642690481"
