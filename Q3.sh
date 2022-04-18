#!/bin/bash

echo

#Q3.a - print the size of the file in bytes
echo `wc -m < $1` bytes

#Q3.b - count total number of lines in the file
echo `wc -l < $1` lines

#Q3.c - count total number of words in the file
echo `wc -w < $1` words
echo 

#Q3.d - count words in each line and print Line No:<> - Count of Words:[]
count=0
while read line;
do
  ((count++))
  echo "Line No:<$count> - Count of Words:[`wc -w <<< $line`]"
done < $1
echo

#Q3.e - provide the list of repeated words and number of times they are repeated
#print as Word: <> - Count of repetition: []
while read line;
do
  echo "Word: <$(echo $line | cut -d " " -f2)> - Count of repetition: [$(echo $line | cut -d " " -f1)]"
done <<< $(grep -wo "[[:alpha:]]\+" $1 | sort | uniq -c | sed '/1/d')