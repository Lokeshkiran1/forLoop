#!/bin/bash -x

read -p "Enter year " y

#check for 16,400,100,17 for proper understanding

if [ $y -le 9999 ]
then
	a=$(($y % 400))
	b=$(($y % 4))
	c=$(($y % 100))

	if [ $a -ne 0 ]
	then
		if [ $b == 0 ] && [ $c -ne 0 ]
		then
			echo "$y is a leap year"
		else
			echo "$y is not a leap year"
		fi
	else
		echo "$y is a leap year"
	fi
else
	echo "not more than 4 digits"
fi
