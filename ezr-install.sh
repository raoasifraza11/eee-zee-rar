#!/usr/bin/env bash
# Author: Asif Raza #
# Date: Sun Apr  8 20:09:55 PKT 2018 #


# Write aliases in ~/.bashrc
# TODO: prevent duplication of content
create_ezr_aliases(){

    # Check existence
    if [ -f ~/.bashrc ]; then

        # Fetch lines
        while IFS='' read -r line || [[ -n "$line" ]]; do
        echo "$line" >> ~/.bashrc

        # Escape the lines
        done < <(tail -n +5 "ezr-aliases.sh")
    fi

    echo -e "Ezr aliases created successfully!! $(date)"

}

# TODO: Implementation later create .bash_functions
create_ezr_functions(){
    if [ -f ~/.bashrc ]; then

        # Fetch lines
        while IFS='' read -r line || [[ -n "$line" ]]; do
        echo "$line" >> ~/.bashrc

        # Escape the lines
        done < <(tail -n +5 "ezr-functions.sh")
    fi
    echo -e "Ezr functions created successfully!! $(date)"
}

# TODO: auto login not working
activate_auto_login(){
    cp ~/.bashrc /etc/profile
    echo -e "Enable automatically source at login successfully!! $(date)"
}

truncate_ezr_bashrc(){
    echo -n '' > ~/.bashrc
}

# Calls

# TODO: Add truncate option with docs
# truncate_ezr_bashrc
create_ezr_aliases
create_ezr_functions
