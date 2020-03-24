read -p "Enter First number:" a
read -p "Enter Secound Number" b
read -p "Enter Third Number" c
z=$(($a + ($b * $c)))
y=$(($c + ($a / $b)))
x=$((($a % $b) + $c ))
d=$((($a * $b) + $c))
   echo $z $y $x $d
min=$z
max=$d
	if [ $z -lt $min ];
then
   	min=$(($z));
else
		min=$min
fi
	if [ $y -lt $min ];
then
   	min=$(($y));
else
		min=$min
fi
	if [ $x -lt $min ];
then
   	min=$(($x));
else
		min=$min
fi
	if [ $d -lt $min ];
then
   	min=$(($d));
else
		min=$min
fi
	if [ $z -gt $max ];
then
   	max=$(($z));
else
		max=$max
fi
	if [ $y -gt $max ];
then
   	max=$(($y));
else
		max=$max
fi
	if [ $x -gt $max ];
then
   	max=$(($x));
else
		max=$max
fi
	if [ $d -gt $max ];
then
   	max=$(($d));
else
		max=$max
fi
echo "Minimum Number is: "$min "Maximum Number is:"$max
