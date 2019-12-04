#!/bin/bash -x
read -p "Enter n value" n
table=1
for (( counter=1; counter<=$n;counter++ ))
do
	table=$(( $table * 2 ))
	echo "$table"
done
