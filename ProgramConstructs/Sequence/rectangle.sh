#!/bin/bash -x
read -p "Enter the length:" a
read -p "Enter the breadth:" b
area=$(($a * $b))
area2=$(($a * $b*25))
echo "area is" $area 
echo "area for 25 plots" $area2
convo=$(($area / 3))
convo2=$(($area2 / 3))
echo "converting from feet to meters" $convo 
echo "Converting forom feet to meters for 25 plots" $convo2
acres=$(($convo / 4047))
acres2=$(($convo2 / 4047))
echo "Converting area into acres" $acres
echo "converting area into areas for 25 plots:"$acres2
