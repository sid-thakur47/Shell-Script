first=0
secound=0
for((i=1;i<=10;i++))
   do
      rand[$i]=$(($RANDOM%400 + 100))

done
arrSmallest=($(echo ${rand[*]}| tr " " "\n"  | sort -n))
arrLargest=($(echo ${rand[*]}|   tr " " "\n" | sort -nr))
echo "Before Sorting:" ${rand[*]}
echo "After Sorting:" ${arrSmallest[*]}
echo "Second smallest number is:" ${arrSmallest[1]}
echo "After Sorting:" ${arrLargest[*]}
echo "Second Largest Number is:" ${arrLargest[1]}
