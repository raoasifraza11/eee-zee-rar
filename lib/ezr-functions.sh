#!/usr/bin/env bash
## Author: Asif Raza
## Date: Sun Apr  8 21:57:08 PKT 2018


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

## EOF ##