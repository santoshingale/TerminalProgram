#!/bin/bash -x
cmd=`env | grep -i usersecret`
	if [ -z $cmd ]
	then
	export usersecret="dH34xJaa23"
	else
	echo "precent"
	fi
