#!/bin/bash -x
a=$((RANDOM % 6 + 1))
b=$((RANDOM % 6 + 1))
z=$(( $a + $b ))
echo $z

