#!/bin/bash -x
function leapYear()
{
if [ `expr $year % 4` -eq 0 ]
then
	if [ `expr $year % 100` -eq 0 ]
	then
		if [ `expr $year % 400` -eq 0 ]
		then
			echo "leap year"
		else
			echo "not leap year"
		fi
	else
	echo "leap year"
	fi
else
echo "not leap year"
fi
}
echo "Enter year"
read year
leapYear 
