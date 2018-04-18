#!/usr/bin/env bash
# Author: Asif Raza #
# Date: Tue Apr 17 22:31:22 PKT 2018 #


main(){

    export EZR=$HOME/.eee-zee-rar


    # Check existence
    if [ -f ~/.bashrc ]; then
        if ! grep -Rq ".eee-zee-rar" ~/.bashrc; then
            # Fetch lines
            while IFS='' read -r line || [[ -n "$line" ]]; do
            echo "$line" >> ~/.bashrc

            # Escape the lines
            done < <(tail -n +4 "$EZR/support/script.sh")
        fi
    fi

    if [ -f ~/.zshrc ]; then
        if ! grep -Rq ".eee-zee-rar" ~/.zshrc; then
            # Fetch lines
            while IFS='' read -r line || [[ -n "$line" ]]; do
            echo "$line" >> ~/.zshrc

            # Escape the lines
            done < <(tail -n +4 "$EZR/support/script.sh")
        fi
    fi

    echo -e "EZR setup successfully!! $(date)"

}

main
