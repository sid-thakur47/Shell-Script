 read -p "Enter the Number" number
 
if [ $number -gt 0 ]
then
	fact=1
		for ((i=$number;i>=1;i--))
do
	fact=$(($fact*$i))
done
fi
echo "Factorial of :" $number  "is:" $fact
