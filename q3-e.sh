#!/bin/bash

#Q3.e - provide the list of repeated words and number of times they are repeated
#print as Word: <> - Count of repetition: []
while read line;
do
  echo "Word: <$(echo $line | cut -d " " -f2)> - Count of repetition: [$(echo $line | cut -d " " -f1)]"
done <<< $(grep -wo "[[:alpha:]]\+" $1 | sort | uniq -c | sed '/1/d')