# Class Management System

This is a simple class management system implemented in Bash, utilizing SQLite for data storage. The system allows users to set student information, update student points, search for students by ID, and view results.


## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/MohammadrezaAmani/class-management-system.git
   ```

2. Navigate to the project directory:

   ```bash
   cd class-management-system
   ```

3. Run the script:

   ```bash
   ./class_management.sh
   ```

- if there is any error like `Permission denied` you can use this command then run the script again:

  ```bash
  chmod +x ./class_management.sh
  ```

## Usage

Follow the on-screen menu to perform various actions:

- **Set Information:** Add new students to the system.
- **Students Points:** Set and update points for existing students.
- **Result:** Search for students by ID or view all students with points in a specific subject.
- **Exit:** Terminate the program.

## Database

The system uses SQLite for data storage. The database file (`students.db`) is automatically created in the project directory.

