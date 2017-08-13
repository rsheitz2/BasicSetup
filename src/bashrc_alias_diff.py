#!/usr/bin/env python

import sys, os, re
from Helpers import list_compare

if len(sys.argv) < 1:
    print "Script compares aliases in ~/.bashrc with BasicSetup/.bashrc"
    print " "
    print "Enter any command as an argument to make comparison (i.e. 1)"
else:

    #Getting local Aliases for bash shell
    bash_local = open(os.path.expanduser("~/.bashrc"), 'r')
    local_aliases = []
    for line in bash_local:
        if len(line) < 2:
            continue

        words = line.split()
        if words[0] == "alias":
            alias = re.split('\'|"|alias ', line)
            local_aliases.append(alias[1].lstrip(' ')+alias[2] )

            
    #Getting repositor Aliases for bash shell
    bash_repo = open(os.path.expanduser(".bashrc"), 'r')
    repo_aliases = []
    for line in bash_repo:
        if len(line) < 2:
            continue

        words = line.split()
        if words[0] == "alias":
            alias = re.split('\'|"|alias ', line)
            repo_aliases.append(alias[1].lstrip(' ')+alias[2] )

    #Determine and print out differences
    add_local_bashrc = list_compare(repo_aliases, local_aliases)
    add_repo_bashrc = list_compare(local_aliases, repo_aliases)

    f_local_bashrc_diff = open ("src/local_bashrc_diffs.txt")
    known_local_bashrc_diff = []
    for line in f_local_bashrc_diff:
        known_local_bashrc_diff.append(line.rstrip('\n'))

    print " "
    print " "
    print "####################"
    print "Aliases in repository .bashrc to consider adding to local"
    print "####################"
    for it in add_local_bashrc:
        print it
    
    print " "
    
    print "####################"
    print "Aliases in local .bashrc to consider adding to repository"
    print "####################"
    for it in add_repo_bashrc:
        if it in known_local_bashrc_diff:
            continue
        print it

    
