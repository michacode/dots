#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[1;36m\]\A\[\e[m\] \[\e[1;34;107m\] \u\[\e[m\]\[\e[1;30;107m\]@\h \[\e[m\]\[\e[0;33m\] [\W]\$\[\e[m\] '
export HISTSIZE=500000
export HISTFILESIZE=100000
