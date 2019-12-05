#!/bin/bash -x
function  getPalindrom()
{
   num=$1
   sum=0
   rem=0
	if [ $num -gt 9 ]
	then
		while [ $num -gt 0 ]
		do
   		rem=$(( $num % 10 ))
   		sum=$(((( $sum * 10 )) + $rem ))
   		num=$(( $num / 10))
		done
		if [ $sum -eq $1 ]
		then
			array[((counter++))]=$sum
   	else
			echo "0"
		fi
	fi
}
array
counter=0
for((i=1;i<=100;i++))
do
getPalindrom $i
done
echo ${array[@]}
