#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20

totalsalary=0
for(( day=1; day<=20; day++ ))
do
	randomcheck=$((RANDOM%3))
	case $randomcheck in
				$isPartTime )
					empHrs=4
				;;
				$isFullTime )
					empHrs=8
				;;
				*)
					empHrs=0
	esac
	salary=$(($empHrs*$empRatePerHr))   #dailywage
	totalsalary=$(($totalsalary+$salary))  #wageformonth
done
