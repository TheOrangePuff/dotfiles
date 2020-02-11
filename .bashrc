#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias :q='exit'
PS1='[\u@\h \W]\$ '

export EDITOR=vim

# dotfile config to git
alias config='/usr/bin/git --git-dir=/home/daniel/.cfg/ --work-tree=/home/daniel'

