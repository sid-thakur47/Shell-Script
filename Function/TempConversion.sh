fahrenheitToCelsius() {
read -p "Enter temperature in Fahrenheit from ( 32F to 212F )" ftemp
	celsius =`echo "scale=2; $(($ftemp-32)) * 5/9))" | bc`
		echo "Fahrenheit" $ftemp "equals:" $celsius 
}
celsiusToFahrenheit() {
read -p "Enter temperature in Fahrenheit from ( 0 C to 100 C )" ctemp
    fahrenheit =`echo "scale=2;$(($(($ctemp * 9/5)) + 32))" | bc`
      echo "Fahrenheit" $ctemp "equals:" $fahrenheit
	  }
echo "Enter 1 for Fahrenheit to Degree Conversion"
echo "Enter 2 for Celsius to Fahrenheit Conversion" 
read num1
 	case $num1 in
		1)
		fahrenheitToCelsius
		;;
		2)
		celsiusToFahrenheit
		;;
	esac