# grep is case sensitive so this wont return anything
cat sample | grep while

# to ignore case use the -i flag
grep -i while sample

echo '============================='

# looking for all instances of the word and
grep and sample

echo '============================='

# checking the upper directory for a directory named awk

ls .. | grep awk

echo '============================='

# you can seatch in multiple files
# FORMAT: grep <string to search> <..files>
grep and sample secondSample # when you search multiple files it shows you which file it found the string

echo '============================='

# you can also use grep to return an inverse search by using the -v flag
grep -iv while sample
# the above command will return every line where the case-insensitive word
# while doesn't exist

echo '============================='

# you can use the -l flag to return the exact file name where the search string exists
grep -l thus * # this returns sample because that's the only place the word thus is found

echo '============================='

# the -c flag is used to return the number of occurences of a search string in a file(s)
grep -c thus *

echo '============================='

# the -r flag is used to search recursively in directories.
# the command below searches recursively for the word Nancy in directories that
# start with dir_
grep -r Nancy dir_*

echo '============================='

# if you are searching for strings that include special characters such as blank spaces
# etc, you have to wrap them in quote
grep -r "It’s really" dir_*

echo '============================='

# the -w flag is used to search for whole words only, that is words that
# are terminated and not substrings
grep -wr the dir_*

echo '============================='

# the -A flag is used to get more context after searching for instance if you
# need to get two lines after the search string has been found
grep -A 2 Proton sample
# if you want to ignore case
grep -iA 2 proton sample

# if you want to show before the lines use the -B flag
grep -iB 2 proton sample # will show two lines beforw the search string

# to see both lines before and after use the -C flag
grep -iC 1 proton sample # will display one line before the search string is found and one line after

echo '============================='

# you can also use regular expressions with grep
# e.g to seatch for lines tat start with a number we can use
# the expression below
grep -r "^[0-9]" *

echo '============================='

# to multiple grep-ing 🤭, you can pipe the output into another grep command
# e.g to find all lines where we have the string "the" and "combining"
grep -wr the dir_* | grep -i combining

echo '============================='

# this looks for all files with a file name containing sample and search the content
# of each for the string proton
find . -name *sample* | xargs grep -i proton

exit 0
