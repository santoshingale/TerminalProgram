#!/bin/bash -x
isPartTime=1
isFullTime=2
wage=50
fullTimeWage=8
partTimeWage=4
hours=0
function getWorkingHours()
{
hours=$(( $hours + $1 ))
echo $hours
}
for (( counter=1; counter<=30; counter++))
do
random=$(( RANDOM % 3 ))
case $random in
		$isPartTime ) 
		hours="$( getWorkingHours $(( $partTimeWage )) )" ;;
		$isFullTime ) 
		hours="$( getWorkingHours $(( $fullTimeWage )) )" ;;
		#hours=$(($hours + $fullTimeWage)) ;;
		*) 
esac
done
pay=$(( $hours * $wage ))
echo $pay
