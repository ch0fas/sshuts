#!/bin/bash

# Quick-J, simple script for both compiling and running Java applications,
#
# Funtion to delete former Java program
delete_binary()
{
    BINARY_NAME="${1::-5}.class"
    rm $BINARY_NAME
}

# Main Flow - Checking if previous binary exists
if [ -f "${1::-5}.class" ];
then
    echo "Old binary found, creating new one"
    delete_binary "$1"
    BINARY_NAME="${1::-5}"
    javac $1
    java $BINARY_NAME
else
    echo "Creating binary for first time"
    BINARY_NAME="${1::-5}"
    javac $1
    java $BINARY_NAME
fi