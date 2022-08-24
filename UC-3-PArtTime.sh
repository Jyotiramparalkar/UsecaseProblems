#!/bin/bash -x

isPartTime=1
isFullTime=2
empRateHr=20
randomcheck=$((RANDOM%3))

if [ $isPartTime -eq $randomcheck ]
then
	empHrs=4
elif [ $isFullTime -eq $randomcheck ]
then
	empHrs=8
else
	empHrs=0
fi

salary=$(($empHrs*$empRateHr))

