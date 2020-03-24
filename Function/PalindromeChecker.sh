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
read -p "Enter Number to check:" number

checker="$( checkPalindrome $number )"

	if [ $number -eq $checker ]
	then
		echo "Number is Palindrome"
	else
		echo "Number is not Palindrome"
	fi
