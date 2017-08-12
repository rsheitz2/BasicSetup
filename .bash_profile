#!/bin/bash

#Getting basic aliases and functions
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#After making changes to this file 'source .bash_profile' to make changes come into effect (. .bash_profile)
#Sourcing ROOT
. $(brew --prefix root6)/libexec/thisroot.sh
#pwd = $PWD
#source /usr/local/Cellar/root6/6.06.08/libexec/thisroot.sh
#cd /Users/robertheitz/Applications/root5_34/
#cd /Users/robertheitz/Documents/Research/root_6.08.02
#source bin/thisroot.sh
#cd $pwd

# Added by Canopy installer on 2015-08-30
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make bashprompt show that Canopy is active, otherwise 1
VIRTUAL_ENV_DISABLE_PROMPT=1 source '/Users/robertheitz/Library/Enthought/Canopy_64bit/User/bin/activate'

#New variables (exporting)
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/:/System/Library/
#export PATH=/Applications/Emacs.app/Contents/MacOS:$PATH #add emacs to path

#Login into to remote
alias cern='ssh -Y rheitz@lxplus.cern.ch' #CERN
alias northarea='ssh -Y na58dst2@lxplus.cern.ch' #CERN
#alias blueWaters='ssh -Y heitz@bw.ncsa.illinois.edu' #Bluewaters
alias blueWaters='ssh -Y heitz@h2ologin3.ncsa.illinois.edu' #Bluewaters
alias lyon='ssh -Y rheitz@ccage.in2p3.fr' #Lyon

# MacPorts Installer addition on 2017-05-03_at_14:12:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2017-05-03_at_14:12:37: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.

