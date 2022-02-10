# ShellScript-Class-Management
Class management script for OS-class written in shellscript.
## description:
this program is a simple program that can store the information of students
and can show the information of students
the program can store the information of students in a file called student.txt
the program can show the information of students in a file called student.txt
the program can show the information of students in os and os-lib
the program can search the information of students by id

## how to use:
1. ### get information
  - get student information
      - please enter the student id:
      - please enter the student name:
      - please enter the student lastname:
  - continue
  - exit
2. ### students points
  - get students points
      - please enter the student id:
      - please enter the student points at OS:
      - please enter the student points at OS-lib:   
  - continue
  - exit
3. ### result
  - search by id
      - please enter the student id:
  - show all students in os
  - show all students in os-lib
4. exit
  ![read](https://github.com/MohammadrezaAmani/ShellScript-Class-Management/blob/main/Images/save.png)
  ![read](https://github.com/MohammadrezaAmani/ShellScript-Class-Management/blob/main/Images/read.png)
## logic:
at the first program shows the main menu with 4 choices using echo
the user can choose the choice by inputting the number
after that we havea while loop that will run until the user choose the exit choice
the main menu has 4 choices
- the first choice is to get information
- the second choice is to get the students points
- the third choice is to show the result
- the fourth choice is to exit
- the get information menu has 2 choices
the first choice is to get the student information
- the user can enter the student id and name and lastname
  - the user must enter the student id
  - the user must enter the student name
  - the user must enter the student lastname
after the user enter the information the information will be saved in the file student.txt in the format of id name lastname
- the user can continue to the next choice
- the user can exit the program
the second choice is to continue
the students points menu has 2 choices
- the first choice is to get the students points
  - the user can enter the student id and the points at os and os-lib
  - the user can enter the student id
  - the user can enter the student points at os
  - the user can enter the student points at os-lib
- after the user enter the information the information will be saved in the file student.txt in the format of id name lastname os points os-lib points the user can continue to the next choice
- the user can exit the program
- the third choice is to show the result
- the result menu has 3 choices
  - the first choice is to search by id
  - the user can enter the student id
      in this choice the program will find the student by id and print the information in the format of id name lastname
      in the syntax of awk we can use the format of id name lastname os points os-lib points
  - the user can continue to the next choice
  - the user can exit the program
  - the fourth choice is to exit
- the program will exit after the user choose the exit choice
