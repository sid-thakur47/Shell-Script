read -p "Enter the Number" num
case "$num" in
	1) day="Monday"
		;;
	2)
		day="Tuesday"
		;;
	3)
		day="Wednesday"
		;;
	4)
		day="Thursday"
		;;
	5)
		day="Friday"
		;;
	6)
		day="Saturday"
		;;
	7)
		day="Sunday"
		;;
esac
	
	echo " Number entered is:" $num "Day of the week is " $day
