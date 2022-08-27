#!/bin/bash
prev1=0
prev2=1
fibonacy=0
#read -p "enter the range:" n;
echo $fibonacy
echo $prev2
flag=0
while [ $flag -eq 0 ]
do
	fibonacy=$(($prev1 + $prev2))
	echo $fibonacy
	prev1=$prev2
	prev2=$fibonacy
	if [ $fibonacy -eq 34 ]
	then
		flag=1
	fi
done
