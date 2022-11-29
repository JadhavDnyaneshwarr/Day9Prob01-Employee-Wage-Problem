#!/bin/bash

#Employee attendence

attendence=$(( RANDOM%3 ));
wage_per_hr=20
full_day_hr=8

if [ $attendence -eq 1 ]
then
	echo "Employee is present for full day work";
	daily_wage_employee=$(( $wage_per_hr * $full_day_hr));
	echo $daily_wage_employee;

elif [ $attendence -eq 2 ]
then
	echo "Employee is present for part time work";
else
	echo "Employee is absent";
fi

