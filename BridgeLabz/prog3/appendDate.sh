#!/bin/bash -x
currentDate=$(date +%d%m%y)
for file in `ls *.log.1`
do
	baseName=`echo $file | awk -F. '{print $1}'`
	extension=`echo $file | awk -F. '{print $2}'`
	echo $file
	newName=$baseName'-'$currentDate'.'$extension
	echo newName
	mv $file $newName 
done 
