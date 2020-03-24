
read -p "Enter the Starting number " start
read -p "Enter the Ending number " end
	for ((counter=$start;counter <=$end; counter++))
do
		count=0
		for ((counter1=1; counter1<=$counter;counter1++))
do
			if [ $(($counter%$counter1)) -eq 0 ]
			then
					count=$(($count+1))
			fi
done
			if [ $count -eq 2 ]
			then
echo "Prime Numbers are" $counter
			fi
done
