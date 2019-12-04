#!/bin/bash -x
read -p "Enter lower limit" low
read -p "Enter the highier limit " high
flag=1
for (( num=$low ; num<=$high; num++ ))
	do
	if [ $num -eq 1 ] || [ $num -eq 0 ]
	then
		continue
	fi
	flag=1
	checked=$(( $num / 2 ))
	for (( check=2; check<=checked; check++ ))
	do
		if [ $(($num % $check )) -eq 0 ]
		then
			flag=0
			break
		fi
	done
	if [ $flag -eq  1 ]
	then
		echo "$num"
	fi
done

