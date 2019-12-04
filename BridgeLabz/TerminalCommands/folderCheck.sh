#!/bin/bash -x
echo "enter folder name"
read folderName
if [ -d $folderName ]
then 
	echo "folder Found"
	else
	echo "folder not found" 
fi

