#!/bin/bash
read -p " Enter the Number like 10 ,100,1000,...  :" num

if [ $num -eq 1 ];
then 
	unit="one"
elif [ $num -eq 10 ];
then 
	unit="ten"
elif [ $num -eq 100 ];
then 
	unit="Hundred"
elif [ $num -eq 1000 ];
then 
	unit="Thousand"
elif [ $num -eq 10000 ];
then 
	unit="Ten Thousand"
fi
echo "Number entered is:" $num " Unit is:" $unit
