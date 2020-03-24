#!/bin/bash -x





read -p "Enter the year:" y

read -p "Enter the monnth:"  m

read -p "Enter the day:" d



yo=$(($y - $(( $((14-$m))/12))))
x=$(( $yo + $(($yo/4)) - $(($yo/100)) + $(($yo/400))))
t1=$(( 14 - $m ))
t2=$(( $t1 / 12 ))
mo=$(( $m + $(( 12 *  $t2)) -2 ))
d0=$(( $(($d + $x + $((31 * $mo)) / 12)) % 7))
echo $d0




