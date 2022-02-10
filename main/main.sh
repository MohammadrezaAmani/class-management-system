#!/bin/sh
while true # this is the main menu
do
    echo "1. set information"
    echo "2. students points"
    echo "3. result"
    echo "4. exit"
    read -p "please enter your choice: " choice
    
    #cleaning the screen
    clear

    case $choice in
        1)
            while true # this is the set information menu
            do
                clear
                echo "1. set student information"
                echo "2. continue"
                echo "3. exit"
                read -p "please enter your choice: " choice
                case $choice in
                    1)

                        echo "please enter the student id: "
                        read id
                        echo "please enter the student name: "
                        read name
                        echo "please enter the student lastname: "
                        read lastname
                        #save the information to the file
                        echo "$id $name $lastname" >> student.txt

                        ;;
                    2)
                        continue
                        ;;
                    3)
                        break
                        ;;
                    *)
                        echo "invalid choice"
                        ;;


                esac
            done
            ;;
        2)
            while true # this is the students points menu
            do
                clear
                echo "1. set students points"
                echo "2. continue"
                echo "3. exit"
                read -p "please enter your choice: " choice
                case $choice in
                    1)
                        echo "please enter the student id: "
                        read id
                        echo "please enter the student points at OS: "
                        read points
                        echo "please enter the student points at OS-lib: "
                        read points2
                        #find the student by id and add the points into end of the line
                        sed -i "/$id/ s/$/ $points $points2/" student.txt
                        ;;
                    2)
                        continue
                        ;;
                    3)
                        break
                        ;;
                    *)
                        echo "invalid choice"
                        ;;
                esac
            done
            ;;
        3)
            while true # this is the result menu
            do
                echo "1. search by id"
                echo "2. show all students in os"
                echo "3. show all students in os-lib"
                echo "4. break."
                read -p "please enter your choice: " choice
                case $choice in
                    1)
                        echo "please enter the student id: "
                        read id
                        #find the student by id and print the information
                        sed -n "/$id/p" student.txt
                        ;;
                    2)
                        #find all students in os and print the information
                        #the format of each line will be like this: id name lastname os os-lib
                        #we want to print the id and name and point in os
                        while read line
                        do
                            echo "$line" | awk '{print $1, $2, $3, $4}'
                        done < student.txt

                       
                        ;;
                    3)
                        #find all students in os-lib and print the information
                        #the format of each line will be like this: id name lastname os os-lib
                        #we want to print the id and name and point in os-lib
                        while read line
                        do
                            echo "$line" | awk '{print $2, $3, $5}'
                        done < student.txt
                        ;;
                    4) 
                        break
                        ;;
                    *)
                        echo "invalid choice"
                        ;;
                esac
            done
            ;;
        4)
            break
            ;;
        *)
            echo "invalid choice"
            ;;
    esac
done
exit 0