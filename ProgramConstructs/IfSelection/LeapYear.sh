#!/bin/bash
read -p "Enter the Year:" year
	if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]
	then
		echo "  Year is leap"
	else
		echo "  Year is not leap"
	fi

