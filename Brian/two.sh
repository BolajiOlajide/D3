#!/usr/bin/env bash

# Write an awk script that prints a list
# of all the words in an input file along
# with the number of times each word appears.

# pipe the sample file
# the tr command is used to translate all empty spaces into new lines this what this does is turn the whole
# file that is separated by spaces into new lines so we can read the file on at a time
# piping the output there to the sort command which basically sorts the output alphabetically
# the uniq command counts the number of times the word appears
# and awks handles the rest and prints it
cat sample | tr ' ' '\n' | sort | uniq -c | awk '{print $2 " appears " $1 " times"}'
