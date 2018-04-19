# EEE' ZEE' RAR

OSX Package for aliases and functions which we need in daily routines. You can install it using below command.

## Table of Content

-   [Installation](#installation)
-   [Uninstall](#uninstall)
-   [Upgrade](#upgrade)
-   [Anatomy](#anatomy)
-   [Default Aliases](#default-aliases)
-   [Todos](#todos)
-   [Thanks](#thanks)

### Installation

Dependencies for this tool are:

- Git
- cURL

You can install the tool using command:

```bash
bash <(curl -s https://raw.githubusercontent.com/raoasifraza11/eee-zee-rar/master/eee-zee-rar.sh)
```

### Uninstall

```bash
ezr_uninstall
```

### Upgrade

```bash
ezr_upgrade
```

### Anatomy

```bash

├── Lib
├── support
├── eee-zee-rar.sh
├── uninstall.sh
├── upgrade.sh
└── .gitignore

```

### Default Aliases

There are some default aliases which are available for you after installation of `eee-zee-rar`.

```bash

## handy short cuts ##
..='cd ..'
l='ls -al'
c='clear'
l.='ls -d .*'
h='history'
vi=vim
svi='sudo vi'


## a quick way to get out of current directory ##
..='cd ..'
...='cd ../../../'
....='cd ../../../../'
.....='cd ../../../../'
.4='cd ../../../../'
.5='cd ../../../../..'


## get web server headers ##
header='curl -I'
headerc='curl -I --compress'

```

### Todos

- [x] Prevent duplication script
- [ ] Add support installation pip, pip3
- [ ] Checking Updates
- [x] Remove bashrc or zshrc content before uninstall
- [ ] Prevent during upgarde user_custom commands


### Thanks

Inspiration, Thanks and credit!!!

- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) - A delightful community-drive framework for managing your zsh configuration.
- [Cyberciti](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) - 30 Handy Bash Shell Aliases For Linux / Unix.


Stay tuned!
