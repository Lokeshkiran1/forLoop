#!/bin/bash -x
read -p "Enter the no: " n;
if [ $n -ge 2 ]
then
	for((i=2; i<=$n/2; i++))
	do
		if [ $(($n%i)) -eq 0 ]
		then
			echo "not a prime no";
			exit;
		fi
	done
	echo "prime no"
else
echo "not a prime no"
fi
