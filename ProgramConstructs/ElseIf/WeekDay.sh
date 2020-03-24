#!/bin/bash
read -p " Enter the Number" num
	if [ $num -eq 1 ];
then
		day="Sunday"
	elif [ $num -eq 2 ];
then
		day="Monday"
	elif [ $num -eq 3 ];
then
		day="Tuesday"
	elif [ $num -eq 4 ];
then
		day="Wednesday"
	elif [ $num -eq 5 ];
then
		day="Thursday"
	elif [ $num -eq 6 ];
then
		day="Friday"
	elif [ $num -eq 7 ];
then
		day="Saturday"
fi
echo "Number is" $num " Day is" $day

