#!/bin/bash

echo -n "Please add your number : "
read num
#num=$1

if [ $(($num%2)) == 0 ];then
echo "$num is even number"
else
echo "$num is odd number"
fi