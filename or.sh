#!/bin/bash

echo -n "Enter age : "
read age

if [[  $age -le 10  ]] || [[ $age -ge 60 ]]; then
echo "You are allowed to enjoy you are time"
else
echo "You are donkey . YOu should work "
fi