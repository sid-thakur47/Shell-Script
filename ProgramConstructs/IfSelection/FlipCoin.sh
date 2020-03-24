flip=$(($(($RANDOM%2))))
if [ $flip -eq 1 ]
then
    echo "heads"

else
	echo "tails"
fi
