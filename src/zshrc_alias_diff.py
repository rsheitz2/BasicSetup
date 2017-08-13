#!/usr/bin/env python

import sys, os, re
from Helpers import list_compare

if len(sys.argv) < 1:
    print "Script compares aliases in ~/.zshrc with BasicSetup/.zshrc"
    print " "
    print "Enter any command as an argument to make comparison (i.e. 1)"
else:

    #Getting local Aliases for bash shell
    bash_local = open(os.path.expanduser("~/.zshrc"), 'r')
    local_aliases = []
    for line in bash_local:
        if len(line) < 2:
            continue

        words = line.split()
        if words[0] == "alias":
            alias = re.split('\'|"|alias ', line)
            local_aliases.append(alias[1].lstrip(' ')+alias[2] )

            
    #Getting repositor Aliases for bash shell
    bash_repo = open(os.path.expanduser(".zshrc"), 'r')
    repo_aliases = []
    for line in bash_repo:
        if len(line) < 2:
            continue

        words = line.split()
        if words[0] == "alias":
            alias = re.split('\'|"|alias ', line)
            repo_aliases.append(alias[1].lstrip(' ')+alias[2] )

    #Determine and print out differences
    add_local_zshrc = list_compare(repo_aliases, local_aliases)
    add_repo_zshrc = list_compare(local_aliases, repo_aliases)

    f_local_zshrc_diff = open ("src/local_zshrc_diffs.txt")
    known_local_zshrc_diff = []
    for line in f_local_zshrc_diff:
        known_local_zshrc_diff.append(line.rstrip('\n'))

    print " "
    print " "
    print "####################"
    print "Aliases in repository .zshrc to consider adding to local"
    print "####################"
    for it in add_local_zshrc:
        print it
    
    print " "
    
    print "####################"
    print "Aliases in local .zshrc to consider adding to repository"
    print "####################"
    for it in add_repo_zshrc:
        if it in known_local_zshrc_diff:
            continue
        print it

    
