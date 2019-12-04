#!/bin/bash -x
function check()
{
	if [ $? -eq 0 ]
	then
		echo "Executed"
	else
		echo "not Executed"
	fi
}
cmd=hello
$cmd
check
ls
check
