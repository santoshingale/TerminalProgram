#!/bin/bash -x
function bubbleSort(){
	for((j=0; j<10;j++))
	do
		for((i=0;i<10-$j-1;i++))
		do
			if [ ${array[$i]} -gt ${array[$(($i +1))]} ]
			then
			temp=${array[$i]}
			array[(($i))]=${array[$(( $i +1 ))]}
			array[$(( $i +1 ))]=$temp
			fi
		done
	done
}
counter=0
while [ $counter -lt 10 ] 
do
	random=$((RANDOM % 1000))
	if [ $random -gt 99 ]
		then
		array[((counter++))]=$random
	fi
done
echo${array[@]}
bubbleSort
echo${array[@]}
echo ${array[1]}
echo ${array[8]}
