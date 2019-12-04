#!/bin/bash -x
for file in `ls *.log*`
do
	count=`grep -o "systemd" $file | wc -l`
	if [ $count -gt 0 ]
	then
		echo $file"  " $count
	fi
done
