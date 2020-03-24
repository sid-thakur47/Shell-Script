read -p " Enter the Number like 10 ,100,1000,...  :" num
case "$num" in 
	10)
	unit="Ten"
	;;
	100)
	unit="Hundred"
	;;
	1000)
	unit="Thousand"
	;;
	10000)
	unit="Ten Thousand"
	;;
	*)
	echo "Enter Valid Number"
	;;
esac
	echo "Number Entered is :"$num"Unit is :"$unit
