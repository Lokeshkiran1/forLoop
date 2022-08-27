#!/bin/bash
read -p "enter the value of n:" n;
powerOfTwo=1;
i=1;
echo $powerOfTwo
while [[ $i -le $n ]]
do
powerOfTwo=$(( $powerOfTwo * 2 ))
		echo $powerOfTwo
	if [ $powerOfTwo -eq 256 ]
	then
		break;
	fi
((i++))
done

