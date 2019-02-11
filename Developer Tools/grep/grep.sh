# grep is case sensitive so this wont return anything
cat sample | grep while

echo '============================='

# looking for all instances of the word and
cat sample | grep and

echo '============================='

# checking the upper directory for a directory named awk

ls .. | grep awk
