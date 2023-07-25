#!/bin/bash

echo -n "Please add your age number: "
read age

echo "You provided age number is : $age"

if [ $age -le 16 ];then
echo "Child"
elif [[ $age -ge 17 ]] && [[ $age -le 30 ]] ;then
echo "Young adults"
elif [[ $age -ge 31 ]] && [[ $age -le 45 ]] ;then
echo "Middle-aged adults"
else 
echo "Old aged adults"
fi