#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empSalaryPerHr=20;
TotalSalary=0;
for (( day=1; day<=2; day++ ))
do
	empAtt=$((RANDOM%3));
	case $empAtt in
		$isFullTime)
			empHr=8;;
		$isPartTime)
			empHr=4;;
		*)
			empHr=0;;
	esac
SalaryPerDay=$(($empHr * $empSalaryPerHr));
TotalSalary=$(($TotalSalary + $SalaryPerDay));
done

