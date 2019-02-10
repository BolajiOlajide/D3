#!/usr/bin/env bash

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

echo ''
echo '========================='
echo ''

# print the row number and first item on each row of the file separated by -
awk '{print NR "- " $1 }' text

echo ''
echo '========================='
echo ''

# print the fifth item separated by space from the result of ls -l
ls -l | awk ' { print $5 } '

echo ''

# print grades greater less than 40 with header
awk -F":" '
BEGIN {
    print "========================================================"
    print "Grades less than 40"
    printf "%-11s %12s\n", "Student", "Grade"
    print "========================================================"
}
{
    if ($2 <= 40) printf "%-11s %10s\n", $1,$2
} ' grades

echo ''

# print out if a student pass or failed
awk -f grades.awk grades2

# print the title code of each artiste
awk '{ print $5 }' artiste

# print all artistes with a price of $7.30
awk '$7=="\$7.30" { print $3 }' table1.txt

exit 0;
