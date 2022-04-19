#!/bin/bash

#Q3.d - count words in each line and print Line No:<> - Count of Words:[]
count=0
while read line;
do
  ((count++))
  echo "Line No:<$count> - Count of Words:[`wc -w <<< $line`]"
done < $1