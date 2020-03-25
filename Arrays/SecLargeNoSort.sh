first=0
secound=0
for((i=1;i<=10;i++))
	do
		rand[$i]=$(($RANDOM%400 + 100))
done 
randLength=${#rand[*]}
	for((i=0;i<$randLength;i++))
		do
			if [[ ${rand[i]} -gt $first ]]
				then
						secound=$first
						first=${rand[i]}
							elif [[ ${rand[i]} -gt $secound && ${rand[i]} -ne $first ]]
						then
							secound=${rand[i]}
					fi
		done
echo "Numbers are:" ${rand[*]}
echo "Secound Largest:"$secound

for((i=0;i<$randLength;i++))
	do
		if [[ ${rand[i]} -lt $first ]]
			then
					secound=$first
					first=${rand[i]}
						elif [[ ${rand[i]} -lt $secound && ${rand[i]} -ne $first ]]
							then
								secound=${rand[i]}
		fi
	done
echo "Secound Smallest:"$secound
