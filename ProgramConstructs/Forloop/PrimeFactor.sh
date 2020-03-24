read -p "Enter the number " number
	for((counter=1;counter<=number;counter++))
do
		if [ $(($number%$counter)) -eq 0 ]
		then


			echo $counter
		fi
done


