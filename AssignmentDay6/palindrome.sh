#!/bin/bash -x
read -p "enter the number: " num ;
rev=0;
a=$num;
while [ $num -gt 0 ]
do
	rem=$(($num%10))
	rev=$(($rev * 10 + $rem))
	num=$(($num/10))
done
if [ $rev -eq $a ]
then
	echo " given num is palindrome"
else
	echo " given num is not palindrome"
fi

