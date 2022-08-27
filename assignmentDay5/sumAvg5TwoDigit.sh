#!/bin/bash -x
read -p "eneter the num1 :" var1
read -p "enter the num2 :" var2
read -p "enter the num3 :" var3
read -p "enter the num4 :" var4
read -p "enter the num5 :" var5

sum=$(( $var1 + $var2 + $var3 + $var4 + $var5 ))
echo "Sum=$sum"
average=`echo $sum | awk '{avg=$1/5; print avg}'`
echo "Average=$average"
