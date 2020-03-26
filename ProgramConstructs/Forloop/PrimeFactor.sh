read -p "Enter a number: " number
for (( i=2; i<=$number; i++ ))
	do
		checkPrime=1
			for (( j=2; j<i; j++ ))
				do
					if [ $(($i%$j)) -eq 0 ]
						then
						checkPrime=0
					fi
				done
		if [ $checkPrime -eq 1 ] && [ $(($number % $i)) -eq 0 ]
			then
				factor=$i
				echo $factor
			fi
   done
	