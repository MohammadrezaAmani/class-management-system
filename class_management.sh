#!/bin/bash

DATABASE="students.db"

# Function to create the database table
create_table() {
    sqlite3 "$DATABASE" <<EOF
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    lastname TEXT NOT NULL,
    os_points INTEGER DEFAULT 0,
    os_lib_points INTEGER DEFAULT 0
);
EOF
}

# Function to set student information
set_student_information() {
    echo "Please enter the student name:"
    read name
    echo "Please enter the student lastname:"
    read lastname
    # Insert the information into the database
    sqlite3 "$DATABASE" "INSERT INTO students (name, lastname) VALUES ('$name', '$lastname');"
}

# Function to set student points
set_student_points() {
    echo "Please enter the student id:"
    read id
    echo "Please enter the student points at OS:"
    read os_points
    echo "Please enter the student points at OS-lib:"
    read os_lib_points
    # Update the points in the database
    sqlite3 "$DATABASE" "UPDATE students SET os_points=$os_points, os_lib_points=$os_lib_points WHERE id=$id;"
}

# Function to search and display student information
search_student() {
    echo "Please enter the student id:"
    read id
    # Find the student by id and print the information
    sqlite3 "$DATABASE" "SELECT * FROM students WHERE id=$id;"
}

# Function to display all students with points in a specific subject
show_students_subject() {
    local subject="$1"
    # Print the id, name, and points in the specified subject
    sqlite3 "$DATABASE" "SELECT id, name, lastname, $subject FROM students;"
}

# Check if the database file exists, if not, create it and the table
if [ ! -e "$DATABASE" ]; then
    touch "$DATABASE"
    create_table
fi

while true; do
    clear
    echo "1. Set Information"
    echo "2. Students Points"
    echo "3. Result"
    echo "4. Exit"
    read -p "Please enter your choice: " choice

    case $choice in
    1)
        while true; do
            clear
            echo "1. Set Student Information"
            echo "2. Continue"
            echo "3. Exit"
            read -p "Please enter your choice: " sub_choice

            case $sub_choice in
            1)
                set_student_information
                ;;
            2)
                break
                ;;
            3)
                exit 0
                ;;
            *)
                echo "Invalid choice"
                ;;
            esac
        done
        ;;
    2)
        while true; do
            clear
            echo "1. Set Students Points"
            echo "2. Continue"
            echo "3. Exit"
            read -p "Please enter your choice: " sub_choice

            case $sub_choice in
            1)
                set_student_points
                ;;
            2)
                break
                ;;
            3)
                exit 0
                ;;
            *)
                echo "Invalid choice"
                ;;
            esac
        done
        ;;
    3)
        while true; do
            clear
            echo "1. Search by ID"
            echo "2. Show all students in OS"
            echo "3. Show all students in OS-lib"
            echo "4. Break"
            read -p "Please enter your choice: " sub_choice

            case $sub_choice in
            1)
                search_student
                ;;
            2)
                show_students_subject "os_points"
                ;;
            3)
                show_students_subject "os_lib_points"
                ;;
            4)
                break
                ;;
            *)
                echo "Invalid choice"
                ;;
            esac
        done
        ;;
    4)
        exit 0
        ;;
    *)
        echo "Invalid choice"
        ;;
    esac
done
