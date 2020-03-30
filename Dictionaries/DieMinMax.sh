declare -A dice
for (( i=1;i<=6;i++ ))
	do
		dict[i]=0
	done
#function for getting dice value 
function getCurrentDicevalue() {
rand=$(($(($RANDOM%6))+1))
echo $rand
}
function start(){
for((  ; ; ))
	do
	val="$(getCurrentDicevalue)"
	dict[$val]=$((${dict[$val]}+1))
	if [ ${dict[$val]} -eq 10 ]
		then
			maxValue=$val
			break
		fi
	done
echo "Number occurred after rolling:"${dict[*]}
echo "Number on each sides of dice:"  ${!dict[*]}
}
#function to find minimum number
function findMin() {
minValue=${dict[1]}
for ((i=1;i<=${#dict[*]};i++))
do
	if [ $minValue  -gt ${dict[i]} ]
		then
		minValue=$i
	fi
done
}
start
findMin
echo "The number which occured minimum times is:" $minValue
echo "The number that reachead maximun times is:" $maxValue