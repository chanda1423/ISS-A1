#!/bin/bash

#write your own logic to sort (ascending) input data only using arrays
#and conditional statements
#sample input: 21,22,34,1,7,90,101,2,4,8,45

read -p "Enter numbers seperated by commas: " string

array=($(echo $string | tr "," "\n"))
#echo ${array[*]}

len=${#array[@]}
for ((i=0;i<$len;i++))
do
  for((j=$i;j<$len;j++))
  do
    if [ ${array[$i]} -gt ${array[$j]} ];
    then
    {
      temp=${array[$j]}
      array[$j]=${array[$i]}
      array[$i]=$temp
    }
    fi
  done
done

echo ${array[*]}