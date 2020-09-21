#
# ~/.bashrc
#
clear
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias atomic='/usr/local/bin/atomicwallet.AppImage'

PS1='\[\e[3;15m\]\A\[\e[m\] \[\e[1;34;107m\] \u\[\e[m\]\[\e[1;30;107m\]@\h \[\e[m\]\[\e[0;33m\] [\W]\$\[\e[m\] '
export HISTSIZE=500000
export HISTFILESIZE=100000
LS_COLORS=$LS_COLORS:'di=1;33:fi=0;97:ex=1;32' ; export LS_COLORS
