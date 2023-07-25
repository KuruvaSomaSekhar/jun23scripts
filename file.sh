#!/bin/bash

file=demo
mkdir $file

if [ -d $file ];then
echo "Folder alredy exists"
else
echo "folder not exists. We create here using mkdir command"
fi