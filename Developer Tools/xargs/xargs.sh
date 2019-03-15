# you can use xargs to print items on a single line or multi-line

echo {1..9} | xargs -n 2 # this prints two items per row

echo ''
echo '==========================================='
echo ''

echo {1..5} | xargs -n 1 # this prints 1 item per row