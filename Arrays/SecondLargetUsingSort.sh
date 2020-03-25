first=0
secound=0
for((i=1;i<=10;i++))
   do
      rand[$i]=$(($RANDOM%400 + 100))

done
arr2=($(echo ${rand[*]}| tr " " "\n" | sort -n))
echo "Before Sorting:" ${rand[*]}
echo "After Sorting:" ${arr2[*]}
echo "Second smallest number is:" ${arr2[1]}
echo "Second Largest Number is:" ${arr2[8]}
