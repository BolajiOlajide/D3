#!/usr/bin/env bash

# Write an awk script to take a file of numbers,
# with one number per line, and output the number of lines,
# the sum of the numbers, and the mean of the numbers

# what you're doing is initializing a variable s which defaults to zero
# adding each line in the number.txt file to it and incrementing another variable
# n which just counts the number of times the loop is gone over
# omnce that is done you're printing s/n
awk '{s+=$1; n++} END {print s/n}' numbers.txt