read -p "Enter the Number" num
case "$num" in
	1)
	words="one"
	;;
	2) 
	words="two"
	;;
	3)
	words="three"
	;;
	4)
	words="Four"
	;;
esac
echo "Word of Number" $num "is:" $words
