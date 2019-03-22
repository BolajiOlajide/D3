#!/usr/bin/env bash

# Write an awk script that prints
# out a file omitting all the blank lines

# using an if condition i'm checking that
# there's actually text on the line
# if there is print it if not
# do nothing
#
# $0 stands for the a line in a file
awk '{if ($0) {print $0}}' sample2