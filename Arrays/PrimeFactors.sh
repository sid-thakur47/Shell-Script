read -p "Enter a number: " number
k=0
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
		if [ $checkPrime -eq 1 ] 
		then
			if [ $(($number % $i)) -eq 0 ]
				then
					factors[((k++))]=$i
			fi
		  fi
	done
echo  "Prime factors are:" ${factors[*]}

