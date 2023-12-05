echo "1. Date" 
echo "2. Cal" 
echo "3. Ls" 
echo "4. PWD" 
echo "5. Exit"
echo -n "Enter your choice: " 
read num
case $num in
	1)
		echo "Date is: "
		date
		;;
	2)
                echo "Calender is: "
                cal
                ;;
	3)
		echo "List of files and directories"
		ls
		;;
	4) 
		echo "Present working Directories"
		pwd
		;;
	5)
		echo "Exit"
		exit
		;;
	*)
		echo "Invalid choice"
		exit
		;;
esac	


	

