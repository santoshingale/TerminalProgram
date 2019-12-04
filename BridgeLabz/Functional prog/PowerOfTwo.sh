#!/bin/bash -x
function powerOfTwo()
{
b=1
sum=1
while [ $a -ge $b ]
do 

	sum=`expr $sum \* 2`
	a=`expr $a - 1`
done
echo $sum
}
echo "Enter number"
read a
powerOfTwo
