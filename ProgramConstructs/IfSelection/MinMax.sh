#!/bin/bash -x

rand1=$((RANDOM%500 + 100))
rand2=$((RANDOM%500 + 100))
rand3=$((RANDOM%500 + 100))
rand4=$((RANDOM%500 + 100))
rand5=$((RANDOM%500 + 100))
min=$rand5
max=$rand1

if [ $rand2 -lt $min ];
then
   min=$(($rand2));
else
	min=$min
fi
if [ $rand3 -lt $min ];
then
   min=$(($rand3));
   else
	min=$min
fi
if [ $rand4 -lt $min ];
then
   min=$(($rand4));
   else
	min=$min
fi
if [ $rand5 -lt $min ];
then
   min=$(($rand5));
   else
	min=$min
fi
echo "Minimum Number is: " $min

if [ $rand2 -gt $max ];
then
   max=$(($rand2));
else
	max=$max
fi
if [ $rand3 -gt $max ];
then
   max=$(($rand3));
   else
	max=$max
fi
if [ $rand4 -gt $max ];
then
   max=$(($rand4));
   else
	max=$max
fi
if [ $rand5 -gt $max ];
then
   max=$(($rand5));
   else
	max=$max
fi
echo " MAximum Number is:"$max