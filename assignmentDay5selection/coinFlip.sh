#!/bin/bash

flips=1
heads=0
tails=0

while [ $flips -le 20 ]
do
	a=$(( RANDOM%2 ))
	if [ $a == 0 ]
	then
			echo $heads $a
			heads=$(($heads+1))
			flips=$(($flips+1))
	else
			echo $tails $a
			tails=$(($tails+1))
			flips=$(($flips+1))
	fi
done

echo "Number of win by Heads and Tails are $heads and $tails"
if [ $heads -gt $tails ]
then
	echo "Head won by difference of $((heads-tails))"
elif [ $heads -lt $tails ]
then
	echo "Tail won by difference of $((tails-heads))"
else
	echo "Its a tie"
fi
