#!/bin/bash

#This script will be executed for non-login, interactive shells
#Use this script to put aliases, functions, etc that can be used accross platforms
#Use .bash_profile for local aliases, PATH/LD_LIBRARY_PATH definitions, etc

###############
#Aliases/functions defined by ROBERT
###############

#alias ll='ls -ltrG' 
#alias ls='ls -G'
alias ll='ls -ltrG --color=always' #doesn't work for mac
alias ls='ls -G --color=always'    #doesn't work for mac
#alias open='xdg-open' #opening pdf #only works for ubuntu

#Used for remote systems
#alias emacs='emacs -nw'
#alias kill_tmux="killall -u rheitz tmux"

alias root='root -l'
alias rm='rm -i'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

#tmux aliases
alias tmuxnew="tmux new -s"
alias tmuxcd='tmux switch -t'

function cl(){
    cd $1;
    ll; }
function path_append ()  { path_remove $1; export PATH="$PATH:$1"; }
function path_prepend () { path_remove $1; export PATH="$1:$PATH"; }
function path_remove (){
    export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`;}
function ld_path_append ()  { path_remove $1; 
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$1"; }
function ld_path_prepend () { path_remove $1; 
    export LD_LIBRARY_PATH="$1:$LD_LIBRARY_PATH"; }
function ld_path_remove (){
    export LD_LIBRARY_PATH=`echo -n $LD_LIBRARY_PATH \
    | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`;}
function mkcd (){
    mkdir $1;
    cd $1; }

#Needed to launch zsh from bash
#unset FPATH #bluewaters specific
