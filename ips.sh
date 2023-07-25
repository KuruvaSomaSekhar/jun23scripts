#!/bin/bash

ips=("172.31.88.68","172.31.88.66","172.31.81.243")

IFS=',' read -ra my_array <<< "$ips"

echo "All values : ${my_array[@]}"
echo "Number of values : ${#my_array[@]}"
echo "Single values : ${my_array[1]}"

for myip in ${my_array[@]}
    do  
        echo $myip
        ssh -o StrictHostKeyChecking=no -i /tmp/jun23.pem ec2-user@$myip "hostname -i"
        scp -o StrictHostKeyChecking=no -i /tmp/jun23.pem /tmp/tomcatinstall.sh ec2-user@$myip:/tmp/
        ssh -o StrictHostKeyChecking=no -i /tmp/jun23.pem ec2-user@$myip "ls -l /tmp/"
        ssh -o StrictHostKeyChecking=no -i /tmp/jun23.pem ec2-user@$myip "bash /tmp/tomcatinstall.sh"
    done