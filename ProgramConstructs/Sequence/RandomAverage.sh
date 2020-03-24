#!/bin/bash -x

a=$((RANDOM % 50 + 1))
b=$((RANDOM % 50 + 1))
c=$((RANDOM % 50 + 1))
d=$((RANDOM % 50 + 1))
e=$((RANDOM % 50 + 1))
z=$(( $a + $b + $c + $d + $e))
x=$((z/5)) 
echo "Addtion is:"$z "Average is:" $x

