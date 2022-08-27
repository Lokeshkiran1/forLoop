#!/bin/bash
read -p "enter the num :" num;
num1=$num;
function palindrome(){
	num=$1
	rev=0;
	while [ $num -gt 0 ]
	do
		rem=$(($num%10));
		rev=$(($rev*10+rem));
		num=$((num/10));
	done
	if [ $rev -eq $num1 ]
	then 
		echo "given num is palindrome"
	else
		echo "given num is not palindrome"
	fi
}
echo result1=$(palindrome $num);
function primenum(){
	num=$1
	if [ $num -ge 2 ]
	then
		for((i=2;i<=$num/2;i++))
		do
			if [ $(($num%i)) -eq 0 ]
			then
				echo "not a prime number"
				exit;
			fi
		done
		echo "prime number"
	else
		echo "not a prime number"
	fi
}
echo result2=$(primenum $num1);
