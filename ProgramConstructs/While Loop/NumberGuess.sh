num=0
guess=0
tries=0
num=$(($RANDOM%100 +1))
	while [ $guess -ne $num ]
do
	echo "Enter number between 1 to 100:" 
read guess
		tries=$(($tries+1))
		if [ $guess -gt $num ]
then
			echo "too high"
		else [ $guess -lt $num ]
			echo "too low"
fi
		if [ $guess -eq $num ]
then
			echo "Correct you got it" $num 
			echo "You guessed in "$tries "tries"
fi
done
