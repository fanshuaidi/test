#!/bin/bash
for x in `awk -F ':' '{print $1}' test.txt |sort |uniq`
do 
    echo "[$x]"
    awk -v y=$x -F ':' '$1==y {print $2}' test.txt
done