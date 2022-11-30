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
				working_hr=$daily_working_hr
			;;
	
			2)
				working_hr=$(($daily_working_hr/2))
			;;
	
			*)
				working_hr=0
			;;
		esac	

		totalWoorkingHour=$(( $totalWoorkingHour + $working_hr ));
		daily_wage=$(( $wage_per_hr * $working_hr ));	


		if [ $totalWoorkingHour -gt 100 ]
		then
			totalWorkingHour=$(( $working_hr - $totalWoorkingHour ));
			salary=$(( $totalWoorkingHour * wage_per_hr ));
			break;
		fi
		salary=$(( $totalWoorkingHour * wage_per_hr ));
		
		((days_of_month++));
	done
	echo "Employee has earned $salary in a month";	
	echo "Employee has earned $daily_wage in a Day";
	if [  $salary -eq 0 ]
	then
		echo "Total working Hour of employee in month is 0";
	else
		echo "Total working Hour of employee in month is $totalWoorkingHour";
	fi
}
Employee_salary

