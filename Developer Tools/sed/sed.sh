#!/usr/bin/env bash

# documentation can be found here
# https://ss64.com/bash/sed.html

# sed stands for string editor
cat text | sed 's/t/T/' >> output # this replaces every t found in the text file to T and saves the result to a file called output

# Yoy can pass a file to the sed command w/o piping into it
sed 's/t/T/' text # the s stands for substitute but doesn't modify the line
# this command only does search and replace for the first instance on each line

# to substitute all lower case t's and transform them you use the /g to select global t's
sed 's/t/T/g' text

# to modify the original file use the -i flag
sed -i 's/t/T/g' text

exit 0;
