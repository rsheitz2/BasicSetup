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

#Getting basic aliases and functions
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi


#########################
#The following are specific to this Mac
#########################

#Login into to remote
alias cern='ssh -Y rheitz@lxplus.cern.ch'
alias northarea='ssh -Y na58dst2@lxplus.cern.ch'
alias blueWaters='ssh -Y heitz@bw.ncsa.illinois.edu'

#Sourcing ROOT
. $(brew --prefix root6)/libexec/thisroot.sh
#pwd=$PWD
#cd /Applications/root_v6.04.06/bin/
#cd /Users/robertheitz/Applications/root5_34/
#cd /Users/robertheitz/Documents/Research/root_6.08.02
#source bin/thisroot.sh
#cd $pwd

#New variables (exporting)
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/:/System/Library/
#export PATH=/Applications/Emacs.app/Contents/MacOS:$PATH #add emacs to path

#Temporary for installing TGeant
export CLHEP_DIR=/usr/local/Cellar/clhep/2.3.4.4
export CLHEP_INCLUDE_DIR=${CLHEP_DIR}/include
export CLHEP_LIBRARY=${CLHEP_DIR}/lib
export LD_LIBRARY_PATH=${CLHEP_LIBRARY}:${LD_LIBRARY_PATH}
export PATH=$CLHEP_DIR/bin/:$PATH
