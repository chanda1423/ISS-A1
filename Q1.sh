#!/bin/bash

#Q1.a - remove empty lines
sed '/^$/d' quotes.txt

#Q1.b - remove duplicates
awk '!visited[$0]++' quotes.txt