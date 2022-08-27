#!/bin/bash
read -p "enter the number1: " num1 ;
read -p "enter the number2: " num2 ;
function palindrome(){
	rev=0;
	num=$1;
	while [ $num -gt 0 ]
	do
		rem=$(($num%10))
		rev=$(($rev * 10 + $rem))
		num=$(($num/10))
	done
	if [ $rev -eq $1 ]
	then
		echo " given num is palindrome"
	else
		echo " given num is not palindrome"
	fi
}
result1=$( palindrome $num1 )
result2=$( palindrome $num2 )
echo "$result1"
echo "$result2"

