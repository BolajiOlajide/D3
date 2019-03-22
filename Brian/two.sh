#!/usr/bin/env bash

# Write an awk script that prints a list
# of all the words in an input file along
# with the number of times each word appears.

# awk '{print $2"@"$1$3$4}' sample
awk '{
    gsub(/\./, "");
    for (i = 1; i <= NF; i++) {
        w = tolower($i);
        count[w]++;
        words[w] = w
    }
}
END {
    for (w = 1; w <= words; w++)
        print words[w] "@" count[words[w]]
}' sample
