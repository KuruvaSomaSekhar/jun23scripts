#!/bin/bash

# for num in {1..10}
# do
# echo "Square of the num $num is : `expr $num \* $num`"
# done


# for num in {1..100..3}
# do
# echo "Number is : $num"
# done

for num in {1..100}
do
if [  $(($num%5)) == 0 ];
then
echo "Number which devided by 5 is $num"
fi
done