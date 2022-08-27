#!/bin/bash
PowerOfTwo=1;
read -p "Enter the value of n: " n;
echo $PowerOfTwo
for ((i=1; i<=n; i++))
do
	PowerOfTwo=$((2*$PowerOfTwo));
	echo $PowerOfTwo;
done
