#!/bin/bash

psp() {
    # run php application
    # $1 $port
    php -S localhost:$1
}