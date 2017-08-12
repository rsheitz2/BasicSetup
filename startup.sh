#!/bin/bash

if [ $# -ne 1 ]; then
    echo "" 
    echo "This script setups up what can be directly setup from this repository"
    echo "For example .emacs and .emacs.d can be directly copied from here to home directory"
    echo ""
    echo "!!!!!!!!!!!!!!!"
    echo "Please varify that nothing will be lost in the home directory first!!"
    echo "!!!!!!!!!!!!!!!"
    echo ""
    echo "Enter Yes to continue"
    
elif [ $1 != "Yes" ]; then
    echo "Wrong option, please enter \"Yes\" to proceed correctly"
    
else
    echo "cp -r {.emacs.d,.emacs} ~"
    cp -r {.emacs.d,.emacs} ~

    echo " "
    echo "Take useful aliases and functions from .zshrc and .bashrc manually"
    echo " "

fi
