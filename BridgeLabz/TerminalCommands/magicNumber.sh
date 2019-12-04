#!/bin/bash -x
low=1
high=100
input=0
mid=$(((( $low + $high )) / 2 ))
while [[ $low -lt $high && $input -ne 1 ]]
do
echo "Enter 0 for low"
echo "enter 2 for high "
echo "Enter 1 for your input" 
read -p "is this your number $mid" input
if [ $input -eq 0 ]
then
	mid=$(( $mid -1  ))
elif [ $input -eq 2 ]
then
	mid=$(( $mid + 1 ))
elif [ $input -eq 1 ]
then
	echo "This is your number $mid"
fi
done

