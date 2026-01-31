#!/bin/bash
#
# Arengee, a (ridiculously) simple script for generating random numbers, with inclusive lower and upper bounds
#
RANGE=$((${2}-${1}+1))
R=$(($(($RANDOM%$RANGE))+${1}))
echo $R