#!/bin/bash

ips=("10.0.0.1","10.0.0.2","10.0.0.3","10.0.0.4")

IFS=',' read -ra my_array <<< "$ips"

echo "All values : ${my_array[@]}"
echo "Number of values : ${#my_array[@]}"
echo "Single values : ${my_array[1]}"

for myip in ${my_array[@]}
do
echo $myip
done