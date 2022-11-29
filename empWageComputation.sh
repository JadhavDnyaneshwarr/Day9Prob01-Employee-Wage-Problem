#!/bin/bash

#Employee attendence

attendence=$(( RANDOM%3 ));

if [ $attendence -eq 1 ]
then
	echo  "Employee is present for full day work";

elif [ $attendence -eq 2 ]
then
	echo "Employee is present for part time work";
else
	echo "Employee is absent";
fi