#!/bin/bash

#Employee attendence

attendence=$(( RANDOM%3 ));
wage_per_hr=20
full_day_hr=8
part_time_hr=4
daily_working_hr=8

case $attendence in
	1)
		echo "Employee is present for full day work";
		working_hr=$daily_working_hr
	;;
	
	2)
		echo "Employee is present for part time work";
		working_hr=$(($daily_working_hr/2))
	;;
	
	*)
		echo "Employee is absent";
		working_hr=0
	;;
esac	


daily_wage_employee=$(( $wage_per_hr * $working_hr));
echo "Employee daily wage is " $daily_wage_employee;

