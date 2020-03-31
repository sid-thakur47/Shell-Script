declare -a repeated

findRepeated() {
repeate=0
number=$1
while [ $number -gt 0 ]
	do
		rem=$(( $number % 10 ))
		repeate=$(( $repeate * 10 + $rem ))
		number=$(( $number / 10 ))
	done
	echo $repeate
}

read -p "Enter ending number:" END
for(( i=10;i<=$END;i++ ))
do
	repeate=$(findRepeated $i)
		if [[ $repeate -eq $i ]]
			then
			repeated[((k++))]=$i 
		fi
done
	echo "Repeated numbers are:" ${repeated[*]}

