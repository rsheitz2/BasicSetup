#!/bin/bash

#This script will be executed for non-login, interactive shells
#Use this script to put aliases, functions, etc that can be used accross platforms
#Use .bash_profile for local aliases, PATH/LD_LIBRARY_PATH definitions, etc

###############
#Aliases/functions defined by ROBERT
###############
alias ll='ls -ltrG --color=always'
alias ls='ls -G --color=always'
alias root='root -l'
#alias emacs='emacs -nw'
#alias open='xdg-open' #opening pdf
alias rm='rm -i'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
##tmux aliases
alias tmuxnew="tmux new -s"
alias tmuxcd='tmux switch -t'
function cl(){
    cd $1
    ll
}
