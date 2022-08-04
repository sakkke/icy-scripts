#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[3;38;2;180;190;254m\]\u@\h\[\e[m\]:\$ '

alias hx=helix
