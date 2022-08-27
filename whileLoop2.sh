#!/bin/bash -x
isPartTime=1;
isFullTime=2;
wagePerHr=20;
empWorkHrs=0;
valid=true;
while [ $valid ]
do
	empAtt=$((RANDOM%3))
	case $empAtt in
		$isFullTime)
			empHrs=8;;
		$isPartTime)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	empWorkHrs=$(($empWorkHrs + $empHrs));
	if [ $empWorkHrs -eq 16 ]
	then
		break;
	fi
done
Salary=$(($wagePerHr*$empWorkHrs));

