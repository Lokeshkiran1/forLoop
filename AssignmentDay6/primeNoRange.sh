#!/bin/bash
read -p "Enter the range: " r;
if [ $r -lt 2 ]
then
echo "No prime no in the range";
else
echo "prime numbers in the range:"
for((j=2;j<=$r;j++))
do
	flag=0;
	for((i=2;i<=$j/2;i++))
	do
		if [ $(($j%i)) -eq 0 ]
		then
			flag=1;
			break;
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo $j;
	fi
done
fi
