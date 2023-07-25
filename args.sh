#!/bin/bash

echo "Number of arguments passed to this script is : $#"
echo "Number of arguments passed to $0 is : $#"
echo "All provided arguments are : $@"
echo $1
echo $2
echo $3
number=$#
echo "Number of arguments passed to this script is : $number"

if [  $number == 3 ] ;then
echo "we are good to execute this script"
else
echo "You are provided wrong number of parameters. Please provide exact 3 parmas only"
exit 1
fi

echo "Here we are executing some commands"
hostname -i
free
uname -a