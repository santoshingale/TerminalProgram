#!/bin/bash -x
cash=100
goal=200
wins=0
loss=0
while [[ $cash -gt 0 && $cash -lt $goal ]]
do
random=$(( RANDOM % 2 ))
	case $random in
	1) cash=$(( $cash + 1 ))
		wins=$(( $wins + 1 ));;
	0) cash=$(( $cash - 1 ))
		loss=$(( $loss + 1 ));;
	esac
done
echo $wins
echo $loss
echo $cash
