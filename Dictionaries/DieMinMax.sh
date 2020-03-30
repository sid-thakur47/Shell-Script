declare -A dice
function initializeDice() {
for (( i=1;i<=6;i++ ))
	do
		dict[i]=0
	done
}
#function for getting dice value 
function getCurrentDicevalue() {
rand=$(($(($RANDOM%6))+1))
echo $rand
}
function start(){
for((  ; ; ))
	do
	dicePosition="$(getCurrentDicevalue)"
	dict[$dicePosition]=$((${dict[$dicePosition]}+1))
	if [ ${dict[$dicePosition]} -eq 10 ]
		then
			maxValuePosition=$dicePosition
			break
		fi
	done
echo "Number occurred after rolling:"${dict[*]}
echo "Number on each sides of dice:"  ${!dict[*]}
}
#function to find minimum number
function findMin() {
minValue=${dict[1]}
minValuePosition=1
for ((i=2;i<=${#dict[*]};i++))
do
	if [ ${dict[i]} -le $minValue ]
		then
		minValue=${dict[i]}
		minValuePosition=$i
	fi
done
}
initializeDice
start
findMin
echo "The number which occured minimum times is:" $minValuePosition
echo "The number that reachead maximun times is:" $maxValuePosition