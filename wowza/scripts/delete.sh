#!/bin/bash
for var in `sh pollsa.sh | tr -s " " "#" | cut -f2 -d "#" | sed '1,4d' | sed '$d'`
do
result="azure storage blob delete videos "$var
echo $result
done
