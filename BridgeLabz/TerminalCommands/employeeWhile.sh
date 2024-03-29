#!/bin/bash -x
isPartTime=1
isFullTime=2
wage=50
fullTimeWage=8
partTimeWage=4
hours=0
day=1
last=0
counter1=0
counter2=0
declare -A dailyWage
function getWorkingHours()
{
case $1 in
      $isPartTime ) 
      hours=$(($hours + $partTimeWage))
      last=$partTimeWage ;;

      $isFullTime ) 
      hours=$(($hours + $fullTimeWage))
       last=$fullTimeWage ;;
      *) 
esac
echo $hours
}

while [[ $hours -le 50 && $day -le 20 ]] 
do
	random=$(( RANDOM % 3 ))
	hours="$( getWorkingHours $random )"
	dailyWage["Day $day"]=$(($hours * $wage ))
	day=$(($day + 1))
done
for((i=1;i<=$day ;i++))
do
	echo "Day $i  ${dailyWage[Day $i]}"
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
