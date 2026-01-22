#!/bin/bash

# Quick-C,  Simple script for compiling a single C file and running it on the terminal, deleting previously compiled binary if it already exists, by me

# Function to delete the previous binary
delete_binary()
{
    BINARY_NAME="${1::-2}.o"
    rm $BINARY_NAME
}

# Main Flow -> Checking if a previous binary exists
if [ -f "${1::-2}" ];
then
    echo "Old binary found, creating new one"
    delete_binary "$1"
    BINARY_NAME="${1::-2}.o"
    gcc $1 -o $BINARY_NAME
    ./$BINARY_NAME ${@:2}
else
    echo "Creating binary for first time"
    BINARY_NAME="${1::-2}.o"
    gcc $1 -o $BINARY_NAME
    ./$BINARY_NAME ${@:2}
fi
