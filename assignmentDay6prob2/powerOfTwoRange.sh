#!/bin/bash
read -p "enter the power of two: " n;
powerOfTwo=1;
i=1;
n=$(($n+1));
while [[ i -le $n ]]
do
	echo $powerOfTwo
	if [ $powerOfTwo -eq 256 ]
	then
		break;
	fi
powerOfTwo=$(($powerOfTwo*2))
echo $powerofTwo
((i++))
done
