# arithmetic operations

a=30
b=15

echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a \* $b`
echo `expr $a / $b`
echo `expr $a % $b`
echo expr $a < $b

# one major drawback of expr is that it only works with integer values
# it doesn't work with floats, you can use the bc command for this :)
