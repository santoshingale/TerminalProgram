#!/bin/bash -x
number=11
i=1
head=0
tail=0
while [[ $head -lt 11 && $tail -lt 11 ]]
do
	random=$(( RANDOM % 2 ))
	case $random in
		1) head=$(( $head + 1 ));;
		0) tail=$(( $tail + 1 ));;
	esac
i=$(( $i + 1 ))
done
if [ $head -gt 10 ]
then
	echo "Heads win"
else
	echo "Tails win $tail"
fi
