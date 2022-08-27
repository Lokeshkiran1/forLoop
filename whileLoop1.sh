#!/bin/bash
valid=true;
count=1;
while [ $valid ]
do
	if [ $count -eq 3 ]
	then
		break;
	else
		echo $count;
		((count++));
	fi
done
