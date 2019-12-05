#!/bin/bash -x
counter=0
function secondLargest(){
	large=0
	small=0
	for i in "${array[@]}"
	do
		if [ $i -gt $large ]
		then
			second=$large
			large=$i
		fi
		if [$i -gt $second] && [ $i -ne $large ]
		then
			second=$i
		fi
	done
	echo "$second"
}
function secondSmallest(){
   large=1000
   small=1000
   for i in "${array[@]}"
   do
      if [ $i -lt $large ]
      then
         second=$large
         large=$i
      fi
      if [[ $i -lt $second && $i -ne $large ]]
      then
         second=$i
      fi
   done
   echo "$second"
}

while [ $counter -lt 10 ] 
do
	random=$((RANDOM % 1000))
	if [ $random -gt 99 ]
		then
		array[((counter++))]=$random
	fi
done
echo${array[@]}
secondLargest
secondSmallest
