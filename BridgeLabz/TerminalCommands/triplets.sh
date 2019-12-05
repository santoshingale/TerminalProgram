#!/bin/bash -x
array=("1" "-2" "-3" "2" "-2" "-1" )
length=${#array[@]}
function triplet(){
	for((i=0;i<$(($length - 2 )) ;i++))
	do
		for((j=$((i + 1));j<$(($length - 1 )) ;j++))
	   do
			for((k=$((j + 1));k<$(($length )) ;k++))
		   do
				if [ $(( ${array[i]} + ${array[j]} +${array[k]} )) -eq 0 ]
				then
					echo "${array[i]} + ${array[j]} +${array[k]} = 0"
				fi
			done
		done
	done
}
triplet
