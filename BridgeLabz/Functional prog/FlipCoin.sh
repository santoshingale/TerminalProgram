#!/bin/bash -x
loop=2
n=2
function getCoinFlip()
{
while [ $loop -ge 1 ]
do
	random=`expr $RANDOM % 100`
	result=`expr $result + $random`
	loop=`expr $loop - 1`
done
outcome=`expr $result / $n`
echo $outcome
if [ $outcome -gt 50 ]
then
	echo  head $outcome  
	echo tail $((100 - $outcome))
else
echo head $outcome 
echo head $(( 100 - $outcome ))
fi
}
read n
getCoinFlip
 
