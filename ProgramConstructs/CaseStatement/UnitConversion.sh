
echo " To convert from Feet to Inches Enter 1:"
echo " To convert from for Inches to Feet Enter 2:"
echo " To convert from for Feet to Meter Enter 3:"
echo " To convert from for Meter to Feet Enter 4:"
read -p "Enter you choice:" number
read -p "Enter Number to be Converted:" convert 

	case "$number" in
	1)
		#feet to inches
		inches=$(($convert*12))
		echo $convert " feet to inches is:" $inches		
			;;
		#inches to feet	
	2)	feet=$(($convert/12))	
		echo $convert " inches to feet is:" $feet	
			;;
		#feet to meter	
	3)  meter=$(($convert/3))		
		echo $convert " feet to meter is:" $meter
			;;

		#meter to feet
	4)  feet1=$(($convert*3))
		echo $convert " meter to feet is:" $feet1
			;;
	*)
		echo "Enter Valid choice"

esac
