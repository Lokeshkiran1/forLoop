#!/bin/bash -x

dice1=$(((RANDOM%6) + 1 ))
dice2=$(((RANDOM%6) + 1 ))
sum=`expr $dice1 + $dice2`
echo "sum of 2 random dice numbers is: "
echo $sum
