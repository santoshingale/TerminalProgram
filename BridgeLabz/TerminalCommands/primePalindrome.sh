#!/bin/bash -x
function primeCheck(){
	num=$1
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
		echo "$flag"
	else "$flag"
	fi
}

function  palindromeChecker()
{
   num=$1
   sum=0
   rem=0
	while [ $num -gt 0 ]
	do
   	rem=$(( $num % 10 ))
   	sum=$(((( $sum * 10 )) + $rem ))
   	num=$(( $num / 10))
	done
	if [ num -eq $1 ]
	then
		echo "1"
   else
		echo "0"
	fi
}


	primeFlag="$( primeCheck 91 )"
	echo $num
	if[ $primeFlag -eq 1 ]
	then
		echo "prime number"
		palindromeFlag="$( palindromeChecker $num )"
		if [ $palindromeFlag -eq 1]
		then
			echo "Palindrome as well"
		else
			echo "Not palindrom"
		fi

	else
		echo "Not Prime"

	fi

