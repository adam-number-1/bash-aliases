#!/bin/bash
#
# aliases for working with paths
#
# this one is very handy everytime you need to convert a windows path 
# into a unix path (and back) while lowering the drive letter (if present),
# removing the ':' and surrounding the drive letter with forward 
# slashes

function w2u () {
    if [[ -z $1 ]]; then 
        echo 'provide path!'
        return 1 
    fi

    local new_path=$(echo $1 | sed 's/^\([A-Z]\)\:/\/\L\1/')
    echo "${new_path}" | sed 's/\\/\//g' 
}


function u2w () {
    if [[ -z $1 ]]; then 
        echo 'provide path!'
        return 1 
    fi

    local new_path=$(echo $1 | sed 's/^\/\([a-z]\)\//\U\1\:\\/')
    echo $new_path | sed 's/\//\\/g' 
}
