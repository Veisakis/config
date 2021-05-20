if [[ $- == *i* ]]
then
	PS1="\[$(tput setaf 166)\]manousos\[$(tput sgr0)\]@\[$(tput setaf 166)\]veisakis-mac\[$(tput sgr0)\]:\[$(tput setaf 3)\]\w\[$(tput sgr0)\]$ "
	export PS1;
	
	export CLICOLOR=1
	export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
fi

