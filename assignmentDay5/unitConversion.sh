#!/bin/bash -x
read -p "select one 1)feet to inch. 2)feet to meter 3)inch to feet 4)meter to feet : select num:" N
case $N in
	1)
	read -p "Enter feet" a
	b=`echo "$a" | awk '{a=$1*12; print a}' `
	echo "$a feet =$b inches"
	;;
	2)
	read -p "Enter feet" a
	b=`echo "$a" | awk '{a=$1*0.3048; print a}'`
	echo "$a feet =$b meters"
	;;
	3)
	read -p "Enter inches" a
	b=`echo "$a" | awk '{a=$1/12; print a}'`
	echo "$a inches =$b feet"
	;;
	4)
	read -p "Enter meter" a
	b=`echo "$a" | awk '{a=$1*3.281; print a}'`
	echo "$a meters =$b feet"
	;;
	*)
	echo "wrong selection"
	;;
esac
