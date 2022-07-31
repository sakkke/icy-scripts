#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;32m\]\u\[\e[39m\] at \[\e[33m\]\h\[\e[39m\] \[\e[34m\]\W\[\e[39m\] \$\[\e[m\] '

alias hx=helix
