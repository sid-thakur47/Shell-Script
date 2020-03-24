cash=100
goal=200
win=0
bet=0
loss=0
	while [[ $cash -gt 0 && $cash -lt $goal  ]]
do
		((bet++))
		if [ $(($RANDOM % 2)) -eq 1 ]
then
			cash=$(($cash+1))
			win=$(($win+1))
else
			((cash--))
			loss=$(($bet-$win))					
fi
done
			echo "won:" $win "total bets:"  $bet "total loss:" $loss 
			if [ $cash -eq 0 ]
then
			echo "Gambler lost all money"
else
			echo "Gambler Won:" $cash
fi 
