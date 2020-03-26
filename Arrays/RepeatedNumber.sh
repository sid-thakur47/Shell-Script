declare -a PrimeFactor
findReverse() { 
reverse=0 
number=$1 
while [ $number -gt 0 ]
	do
		rem=$(( $number % 10 ))
		reverse=$(( $reverse * 10 + $rem ))
		number=$(( $number / 10 ))
	done
echo $reverse
}
read -p "Enter ending number:" END
for(( i=10;i<=$END;i++ ))
do
	reverse=$(findReverse $i)
		if [[ $reverse -eq $i ]]
			then
			repeated[((k++))]=$i 
		fi
done
echo "Repeated numbers are:" ${repeated[*]} 

