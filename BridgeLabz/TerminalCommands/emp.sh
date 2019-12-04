#!/bin/bash -x
wage=100
fullTime=8
partTime=4
isPartTime=1
isFullTIme=0
attend=$(( RANDOM % 2 ))
if [ $attend -eq 1 ]
then
	echo "present"
	empType=$(( RANDOM % 2 )) 
	if [ $empType -eq $isFullTime ]
	then
		echo "fulltime" $(( $wage * $fullTime ))
	else  
		echo "parttime " $(( $wage * $partTime ))
	fi
else
	echo "absent"
fi
