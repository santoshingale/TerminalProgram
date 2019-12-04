#1/bin/bash -x
i=5
min=1000
max=0
while [ $i -ge 1 ]
do
	val=$(( RANDOM % 1000 ))
	echo $val
	if [ $max -lt $val ]
	then
	max=$val
	fi
	if [ $min -gt $val ]
	then
	min=$val
	fi
i=$((i-1))
done
echo
echo $min
echo $max
