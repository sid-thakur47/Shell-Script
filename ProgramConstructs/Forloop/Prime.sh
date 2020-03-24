read -p "Enter the Number" number
count=0
	for (( counter=1; counter <=number; counter++ ))
do
		if [ $(($number%$counter)) -eq 0 ]
	then
			count=$(($count+1))

		fi
done
		if [ $count -eq 2 ]
	then
		echo Number is Prime
	else
		echo Number is not prime
		fi
