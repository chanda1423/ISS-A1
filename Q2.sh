#!/bin/bash

#Q2 - rewrite each line as [author] once said, "[quote]"

while IFS= read -r line;
do
  if [[ $line == *"~"* ]];
  then
    echo $(echo $line | cut -d "~" -f2) once said, \"$(echo $line | cut -d "~" -f1 | awk '{$1=$1};1')\"
  else
    echo $line
  fi
done < quotes.txt > speech.txt
