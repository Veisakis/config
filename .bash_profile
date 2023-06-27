#
# ~/.bash_profile
#
#Clean home dir
rm ~/.python_history ~/.viminfo .lesshst

#Start daemons
mpd &
transmission-daemon &

#Start wm
startx
exec i3

[[ -f ~/.bashrc ]] && . ~/.bashrc
