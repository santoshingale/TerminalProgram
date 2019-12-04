#!/bin/bash -x
data=`find /home -type f -mtime +7`
for file in $data
do 
	mv $file /home/admin1/Documents/BridgeLabz/backup
done
