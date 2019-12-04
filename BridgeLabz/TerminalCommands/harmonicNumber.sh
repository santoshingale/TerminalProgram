#!/bin/bash -x
number=5
harmonic=1
for (( i=2; i<=$number; i++ ))
do
	sum=$(echo 1/$i | bc -l)
	#harmonic=$(echo $harmonic $sum | awk '{print $1 + $2}')
	harmonic=$(echo  $harmonic + $sum | bc )
done
echo $harmonic
