#!/bin/bash -x
isPartTime=1
isFullTime=2
wage=50
fullTimeWage=8
partTimeWage=4
hours=0
day=1
function getWorkingHours()
{
hours=$(( $hours + $1 ))
echo $hours
}

while [[ $hours -le 50 && $day -le 20 ]] 
do
random=$(( RANDOM % 3 ))
case $random in
		$isPartTime ) 
		#hours=$(($hours + $partTimeWage))
		hours="$( getWorkingHours $(( $partTimeWage )) )" 
			last=$partTimeWage ;;
		$isFullTime ) 
		hours="$( getWorkingHours $(( $fullTimeWage )) )" 
		#hours=$(($hours + $fullTimeWage))
			last=$fullTimeWage ;;
		*) 
esac
day=$(($day + 1))
done
if [ $hours -gt 50 ]
then
	hours=$(( $hours - $last ))
	pay=$(( $hours * $wage ))
	echo $pay
else
	pay=$(( $hours * $wage ))
	echo $pay
fi
