#!/bin/zsh

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

#Local ROBERT aliases for this remote logins
#########################
alias cern='ssh -Y rheitz@lxplus.cern.ch'
alias northarea='ssh -Y na58dst2@lxplus.cern.ch'
alias lyon='ssh -Y rheitz@ccage.in2p3.fr'
alias blueWaters='ssh -Y heitz@h2ologin3.ncsa.illinois.edu'
#alias blueWaters='ssh -Y heitz@bw.ncsa.illinois.edu'
