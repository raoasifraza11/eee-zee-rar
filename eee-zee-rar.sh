#!/bin/bash
## Author: Asif Raza

######################
# Aliases collection #
######################


## handy short cuts ##
alias ..='cd ..'
alias l='ls -al'
alias c='clear'
alias l.='ls -d .*'
alias h='history'
alias vi=vim
alias svi='sudo vi'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# get web server headers #
alias header='curl -I'
alias headerc='curl -I --compress'

#############################
# Serve the PHP Application #
#############################
spa() {
    # Retrieve the PATH
    PHP=$(which php)

    # Serve on Default $PORT
    if [ ! $1 ]; then
       PHP -S localhost:8000

    # Serve on custom $PORT
    else
       PHP -S localhost:$1
    fi
}




## EOF!