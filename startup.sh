#!/bin/bash

if [ $# -ne 1 ]; then
    echo "" 
    echo "This script setups up what can be directly setup from this repository"
    echo "For example .emacs and .emacs.d can be directly copied from here to home directory"
    echo "New aliases to consider are also output"
    echo ""
    echo "!!!!!!!!!!!!!!!"
    echo "Please varify that nothing will be lost in the home directory first!!"
    echo "!!!!!!!!!!!!!!!"
    echo ""
    echo ""
    echo "Enter \"alias\" to list new potenial aliases	(i.e. alias)"
    echo "Enter \"YES\" make copies to continue		(i.e. YES)"
    
elif [ $1 == "YES" ]; then
    #Search for alias differences
    ./src/bashrc_alias_diff.py
    ./src/zshrc_alias_diff.py

    #Make copys from repo to local
    echo "cp -r {.emacs.d,.emacs} ~"
    cp -r {.emacs.d,.emacs} ~
    
elif [ $1 == "alias" ]; then
    #Search for alias differences
    ./src/bashrc_alias_diff.py
    ./src/zshrc_alias_diff.py

else
    echo "Wrong input"
fi
