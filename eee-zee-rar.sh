#!/usr/bin/env bash
# Author: Asif Raza #
# Date: Sun Apr  8 20:09:55 PKT 2018 #

main() {
    # Use colors, but only if connected to a terminal, and that terminal
    # supports them.
    if which tput >/dev/null 2>&1; then
      ncolors=$(tput colors)
    fi
    if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
        RED="$(tput setaf 1)"
        GREEN="$(tput setaf 2)"
        YELLOW="$(tput setaf 3)"
        BLUE="$(tput setaf 4)"
        BOLD="$(tput bold)"
        NORMAL="$(tput sgr0)"
    else
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        BOLD=""
        NORMAL=""
    fi

    # Only enable exit-on-error after the non-critical colorization stuff,
    # which may fail on systems lacking tput or terminfo
    set -e

    if [ ! -n "$EZR" ]; then
        EZR=~/.eee-zee-rar
    fi


    if [ -d "$EZR" ]; then
        printf "${YELLOW}You already have EEE' ZEE' RAR' installed.${NORMAL}\n"
        printf "You'll need to remove $EZR if you want to re-install.\n"
        exit
    fi

    # Prevent the cloned repository from having insecure permissions. Failing to do
    # so causes compinit() calls to fail with "command not found: compdef" errors
    # for users with insecure umasks (e.g., "002", allowing group writability). Note
    # that this will be ignored under Cygwin by default, as Windows ACLs take
    # precedence over umasks except for filesystems mounted with option "noacl".
    umask g-w,o-w

    printf "${BLUE}Cloning Oh My EZR...${NORMAL}\n"
    hash git >/dev/null 2>&1 || {
        echo "Error: git is not installed"
        exit 1
    }


    # The Windows (MSYS) Git is not compatible with normal use on cygwin
    if [ "$OSTYPE" = cygwin ]; then
        if git --version | grep msysgit > /dev/null; then
          echo "Error: Windows/MSYS Git is not supported on Cygwin"
          echo "Error: Make sure the Cygwin git package is installed and is first on the path"
          exit 1
        fi
    fi
    env git clone --depth=1 https://github.com/raoasifraza11/eee-zee-rar.git $EZR || {
        printf "Error: git clone of eee-zee-rar repo failed\n"
        exit 1
    }

    printf "${GREEN}"
    echo '................................................'
    echo '.                                              .'
    echo '.   °°°·.°·..·°¯°·._.· 𝔼ℤℝ ·._.·°¯°·.·° .·°°°  .'
    echo '.                                              .'
    echo '.................is now installed!..............'
    printf "${NORMAL}"
    bash $HOME/.eee-zee-rar/support/load.sh
    echo "${YELLOW}"
    echo 'Thank you!'
    env zsh
}

main