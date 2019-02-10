#!/usr/bin/env bash

# documentation can be found here
# https://ss64.com/bash/awk.html

awk -F":" ' { print $1 } ' text # this is similar to splitting each row in the text at the :
# then printing the first substring of the result

echo ''
echo '========================='
echo ''

# to paginate the result of the awk command above
# here we are getting the items from the 3rd row to the 8th
awk -F":" ' NR==3,NR==8 { print $1,$3 } ' text

echo ''
echo '========================='
echo ''

# you can check the length of the string with the built-in function called length
awk -F":" ' NR==3,NR==8 { print length($1),$3 } ' text

echo ''
echo '========================='
echo ''

# you can pretty format the output so the elements on the left can be padded
awk -F":" ' NR==3,NR==8 { printf "%-11s %10s\n", $1,$3 } ' text # if any of the rows contained a string we'd use d instead e.g %3d
# the %-11s is negative because we want to give the left row a left padding

echo ''
echo '========================='
echo ''

# adding a header is pretty simple
awk -F":" '
BEGIN {
    print "========================================================"
    printf "%-11s %12s\n", "User", "Description"
    print "========================================================"
}
NR==3,NR==8 { printf "%-11s %10s\n", $1,$3 } ' text

exit 0;
