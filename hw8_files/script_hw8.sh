#!/bin/bash

> fout

echo "Task 1" >> fout
sum=$(awk '{print $1 + $2 + $3}' hw8_1)
echo "$sum" >> fout
echo "" >> fout

echo "Task 2" >> fout
echo "Hello, world!" >> fout
echo "" >> fout

echo "Task 3" >> fout
cut -c 10 hw8_2 >> fout
echo "" >> fout

echo "Task 4" >> fout
awk '
NR%2 == 1 {name = $0; next} 
$0 ~ /777/ {print name; print $0}
' hw8_3 | tr -d ' ' >> fout
echo "" >> fout

echo "Task 5" >> fout
sort -t$'\t' -k2,2 -k3,3n -k4,4n hw8_4 >> fout
echo "" >> fout

echo "Task 6" >> fout
awk '/[0-9]/ && !/[XxYy]/ {sum += length($0)} END {print sum}' hw8_5 >> fout


