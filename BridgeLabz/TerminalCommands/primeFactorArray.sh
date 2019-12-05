#!/bin/bash -x
function primeFactor(){
number=$1
	while [ $(($number % 2)) -eq 0 ]
	do
		array[((counter++))]=2
		number=$(( $number /2 ))
	done
	counter=$(($number / 2 ))
	for (( count=3; count<=$counter; count=$(($count + 2))))
	do
		while [ $(( $number % $count)) -eq 0 ]
		do
			array[((counter++))]=$count
			number=$(( $number / $count ))
		done
	done
	if [ $number -gt 1 ]
	then
	array[((counter++))]=$number
	fi
}

array
counter=0
read -p "Enter the number" number
primeFactor $number
echo${array[@]}
