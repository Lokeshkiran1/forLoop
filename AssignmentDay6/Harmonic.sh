#!/bin/bash 
read -p "Enter the value of n: " n;
sum=0;
harNo=0;
for ((i=1; i<=n; i++))
do
	sum=`echo "$i" | awk '{a=1/$1; print a}'`;
	harNo=`echo "$harNo $sum" | awk '{a=$1+$2; print a}'`;
	echo $harNo;
done
