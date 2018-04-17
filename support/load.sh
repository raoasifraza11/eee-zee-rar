#!/usr/bin/env bash
# Author: Asif Raza #
# Date: Tue Apr 17 22:31:22 PKT 2018 #

init(){

export EZR=$HOME/.eee-zee-rar

}

load_ezr(){

    # Check existence
    if [ -f ~/.bashrc ]; then

        # Fetch lines
        while IFS='' read -r line || [[ -n "$line" ]]; do
        echo "$line" >> ~/.bashrc

        # Escape the lines
        done < <(tail -n +4 "$EZR/support/script.sh")
    fi

    if [ -f ~/.zshrc ]; then

        # Fetch lines
        while IFS='' read -r line || [[ -n "$line" ]]; do
        echo "$line" >> ~/.zshrc

        # Escape the lines
        done < <(tail -n +4 "$EZR/support/script.sh")
    fi

    echo -e "EZR setup successfully!! $(date)"

}

truncate_ezr_bashrc(){
    echo -n '' > ~/.bashrc
}


init
load_ezr
