#!/bin/bash -x
read -p "Enter the no :"  a;
factorial=1;
for((i=$a; i>=1; i--))
do
	factorial=$(($i*$factorial));
done
echo $factorial
