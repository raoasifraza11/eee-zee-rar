#!/usr/bin/env bash
# Author: Asif Raza #
# Date: Tue Apr 17 22:33:21 PKT 2018 #

## Load the ezr_resources
if [ -d ~/.eee-zee-rar ]; then
    for file in $HOME/.eee-zee-rar/lib/*.sh
    do
        source $file;
    done
fi

if [ -d ~/.eee-zee-rar ]; then
    for file in $HOME/.eee-zee-rar/help/*.sh
    do
        source $file;
    done
fi