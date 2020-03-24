checkPalindrome() {
num=$1
	while [ $num -ne 0 ]
	do
		rem=$(($num % 10))
		reverseNum=$(($((reverseNum*10)) + $rem))
		num=$(($num/10))
	done
echo $reverseNum
}

function checkPrime() {
number=$1
count=1
	for (( i=2; i<$number; i++ ))
	do
		if [ $(($number % $i)) -eq 0 ]
		then
			count=0
		fi
	done
echo $count
}
read -p "Enter the  number to check prime:" num
prime="$( checkPrime $num )"
	if [ $prime -eq 1 ]
	then
		palindrome="$( checkPalindrome $num )"
	if [ $num -eq $palindrome ]
	then
			primepalindrome="$(checkPrime $palindrome)"
	if [ $primepalindrome -eq 1 ]
	then
		echo "prime and palindrome"
	else
		echo " palindrome of $num is not prime"
	fi
	else 
		echo "$num is prime but not palindrome"
	fi
	else
		echo "$num is not prime"
	fi	