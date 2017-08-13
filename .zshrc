#!/bin/zsh

# Created by newuser for 4.3.11
autoload -U compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

#Save commands after execution
setopt inc_append_history
setopt share_history

#set up history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

#Change default charaters considered as part of a word
#(/ removed from default)
export WORDCHARS='*?_-.[]~=&;&%^(){}<>'


#########################
#Aliases/functions defined by ROBERT
#########################

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
    cd $1
    ll}
function path_append ()  { path_remove $1; export PATH="$PATH:$1"; }
function path_prepend () { path_remove $1; export PATH="$1:$PATH"; }
function path_remove (){
    export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`;}
function mkcd (){
    mkdir $1
    cd $1}

#Local ROBERT aliases for this remote logins
#########################
alias cern='ssh -Y rheitz@lxplus.cern.ch'
alias northarea='ssh -Y na58dst2@lxplus.cern.ch'
alias lyon='ssh -Y rheitz@ccage.in2p3.fr'
alias blueWaters='ssh -Y heitz@h2ologin3.ncsa.illinois.edu'
#alias blueWaters='ssh -Y heitz@bw.ncsa.illinois.edu'
