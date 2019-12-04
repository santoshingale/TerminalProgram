#!/bin/bash -x
read -p "Enter month" month
read -p "Enter day" date
if (( $month <= 6 && $month >= 3 && $date != 0 && $date < 32 ))
then 
	if (( $month == 3 ))
	then 
		if (( 20 <= $date ))
		then
		echo "true"
		else
		echo "false"
		fi
	elif (( $month == 6 ))
	then
		if (( $date <= 20 ))
		then
		echo "true"
		else "false"
		fi
	else 
	echo "true"
	fi
else
	echo "false"
fi
