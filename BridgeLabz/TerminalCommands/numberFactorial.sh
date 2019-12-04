#!/bin/bash -x
number=5
factorial=1
for (( i=1; i<=number; i++ ))
do 

	factorial=$(( $factorial * $i ))
done
