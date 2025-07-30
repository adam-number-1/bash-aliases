#!/bin/bash

# this function gets rid of trailing carriage return characters, which
# can be a problem when running a bash script that was for example 
# touched by git on windows
function rmcr () {
    sed -i 's/\r$//' "$@"
}

# this one creates a backup of some path - a copy with. bak appended to it
function bak () {
    /usr/bin/cp "$1" "${1}.bak"
}

# this one undoes the 'bak' - moves the .bak file to the path without the .bak
# extension
function unbak () {
    if echo "$1" | grep -Eq '.*\.bak$'; then
        /usr/bin/mv "$1" "${1::-4}"
    fi 
}