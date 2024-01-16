echo "Please type in your first name and press ENTER: "
read name
 
echo " "
 
echo "Welcome to the BASH script $name. Please make a choice from the menu below:"
 
sleep 5
clear
 
choice=0
 
while [ $choice != 5 ]; do
        echo "************************************************"
        echo "*                                              *"
        echo "*   1. What directory am I currently in?       *"
        echo "*   2. Current date                            *"
        echo "*   3. Calendar for 2023                       *"
        echo "*   4. Listing of files in my home directory   *"
        echo "*   5. Quit                                    *"
        echo "*                                              *"
        echo "************************************************"
 
        echo " "
        echo "Select an option from the menu above: "
 
        read choice
        echo " "
 
        case $choice in
                1) pwd;;
                2) date;;
                3) cal 2023;;
                4) ls -l ~;;
        esac
 
        echo " "
 
        read -p ENTER
        clear
 
done
 
echo "Goodbye $name"
