head=0
tail=0
	while [[ head -lt 11 && tail -lt 11 ]]

do
		if [ $(($RANDOM % 2)) -eq 1 ]
then
			head=$(($head+1))
			echo "head:" $head
else
			tail=$(($tail+1))
			echo "tail:" $tail
fi
done
echo "Number of heads:" $head "Number of Tails" $tail
