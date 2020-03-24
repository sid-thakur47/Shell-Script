#!/bin/bash
read -p " Enter the Number" num
	if [ $num -eq 0 ];
then 
	word="zero"
		elif [ $num -eq 1 ];
then 
	word="One"
		elif [ $num -eq 2 ];
then 
	word="Two"
		elif [ $num -eq 3 ];
then 
	word="Three"
		elif [ $num -eq 4 ];
then 
	word="Four"
	elif [ $num -eq 5 ];
then 
	word="Five"
fi
echo "Number entered is:" $num " Word is:" $word



