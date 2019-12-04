#!/bin/bash -x
read -p "Enter the number" number
while [ $(($number % 2)) -eq 0 ]
do
		echo "2"
		number=$(( $number /2 ))
done
counter=$(($number / 2 ))
for (( count=3; count<=$counter; count=$(($count + 2))))
do
	while [ $(( $number % $count)) -eq 0 ]
		do
		echo "$count"
		number=$(( $number / $count ))
	done
done
if [ $number -et 0 ]
then
echo "$number"
fi
