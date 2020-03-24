#!/bin/bash 

	read -p "Enter First number:" a
		read -p "Enter Secound Number" b
			read -p "Enter Third Number" c
			z=$(($a + ($b * $c)))
         y=$(($c + ($a / $b)))
			x=$((($a % $b) + $c ))
			d=$((($a * $b) + $c))
	echo $z $y $x $d
