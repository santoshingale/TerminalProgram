#!/bin/bash -x
flag=0
declare -A dice
while [[ $flag -le 0 ]]
do
	random=$((RANDOM %6))
	random=$(( $random + 1))
   dice[$random]=$(( "${dice[$random]}" + 1 ))
   rs="${dice[$random]}"
   if [ $rs -gt 9 ]
   then
      flag=$(($flag +1))
		echo $random
   fi
done
echo ${dice[@]}
