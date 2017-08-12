#!/bin/bash

#Getting basic aliases and functions
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#Login into to remote
alias cern='ssh -Y rheitz@lxplus.cern.ch' #CERN
alias northarea='ssh -Y na58dst2@lxplus.cern.ch' #CERN
#alias blueWaters='ssh -Y heitz@bw.ncsa.illinois.edu' #Bluewaters
alias blueWaters='ssh -Y heitz@h2ologin3.ncsa.illinois.edu' #Bluewaters
alias lyon='ssh -Y rheitz@ccage.in2p3.fr' #Lyon
