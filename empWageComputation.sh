#!/bin/bash

#Employee attendence

attendence=$(( RANDOM%3 ));
wage_per_hr=20;
days_of_month=1;
daily_working_hr=8;
totalWoorkingHour=0;

function Employee_salary(){
	while [[ $days_of_month -le 20 && $totalWoorkingHour -lt 100 ]]
	do

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

		totalWoorkingHour=$(( $totalWoorkingHour + $working_hr ));
		if [ $totalWoorkingHour -gt 100 ]
		then
			totalWorkingHour=$(( $working_hr - $totalWoorkingHour ));
			break;
		fi
		salary=$(( $working_hr - $totalWoorkingHour ));
		totalsalary=$((totalsalary + $salary));
		
		((days_of_month++));
	done
	echo "Employee has earned $totalsalary in a month (Total working Hour : $totalWorkingHour)";
}
Employee_salary

