pow=2
max=256
result=1
while [[ $result -le $max-1 ]]
do
	result=$(($result * $pow))
	i=$(($i+1))
echo " power of 2^$i $power is" $result
done

