declare -A birthdayDict
TOTAL=50
currentIndivDetails=0

function getDuplicateMonthYearsDetails(){
count=0;
for ((j=0;j<=${#birthdayDict[*]};j++))
	do
		if [[ $currentIndivDetails -eq ${birthdayDict[$j]} ]] 
			then
			((count++))			
		fi
	done
echo "Month" $currentIndivDetails " is repeating " $count " Persons"
}

function getInvidualList() {
echo " Below are random birth details of 50 individual"
for (( i=0;i<$TOTAL;i++ ))
	do
		randMonth=$(($RANDOM % 12+1))
		randYear=$(($RANDOM % 2+1992))
		birthdayDict[$i]="$randMonth"
		echo  "Individual:" $i "Year"  $randYear "Month:" $randMonth
	done
}

function getRepetedIndiviudals() {
echo " Below are details for Individual whith repeating year/month details."
for ((k=0;k<${#birthdayDict[*]};k++))
	do
		currentIndivDetails=${birthdayDict[$k]};
			if [[ "$yearMonthStr" != *"$currentIndivDetails"* ]]; 
			then
				getDuplicateMonthYearsDetails
			fi
			yearMonthStr="$yearMonthStr $currentIndivDetails"
	done
}
getInvidualList
getRepetedIndiviudals
