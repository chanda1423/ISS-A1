#!/bin/bash

read -p "Enter string: " string

#5a - print the string in reverse
echo $string | rev

#5b - replace letters in reverse output with subsequent letter
len=${#string}
output=`echo $string | rev`
echo $output | tr '[a-y]z' '[b-z]a' | tr '[A-Y]Z' '[B-Y]A'

#5c - read the string and print only the half string in reverse
let halflen=$len/2
for((i=$halflen-1;i>=0;i--))
do
    reverse="$reverse${string:$i:1}"
done

for((i=$halflen;i<$len;i++))
do
    reverse="$reverse${string:$i:1}"
done
echo $reverse