#!/bin/bash -x
read -p "enter the no : " n;
sum=0;
rev=0;
n1=$n;
while [ $n -ne 0 ]
do
	r=$(($n%10))
	sum=$(($sum+$r))
	n=$(($n/10))
done
m=$sum;
while [ $m -ne 0 ]
do
	r1=$(($m%10))
	rev=$((($rev*10)+$r1))
	m=$(($m/10))
done
p=$(($sum*$rev))
if [ $sum -eq $p ]
then
	echo "given number is a magic num"
else
	echo "given num is not a magic num"
fi
