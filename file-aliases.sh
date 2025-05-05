#!/bin/bash

# this function gets rid of trailing carriage return characters, which
# can be a problem when running a bash script that was for example 
# touched by git on windows
function rmcr () {
    sed -i 's/\r$//' "$@"
}
