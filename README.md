# Class Management System

This is a simple class management system implemented in Bash, utilizing SQLite for data storage. The system allows users to set student information, update student points, search for students by ID, and view results.

## Features

- **Set Information:** Add new student information, including name and last name.
- **Students Points:** Set and update student points for OS and OS-lib subjects.
- **Result:** Search for students by ID and view all students with points in OS or OS-lib.
- **Exit:** Terminate the program.

## Requirements

- Bash (Bourne Again SHell)
- SQLite

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
  chmod +x class_management.sh
  ```

## Usage

Follow the on-screen menu to perform various actions:

- **Set Information:** Add new students to the system.
- **Students Points:** Set and update points for existing students.
- **Result:** Search for students by ID or view all students with points in a specific subject.
- **Exit:** Terminate the program.

## Database

The system uses SQLite for data storage. The database file (`students.db`) is automatically created in the project directory.

## Contributing

If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your changes to your fork.
5. Submit a pull request to the main repository.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- The script is inspired by the need for a simple class management system.
- Special thanks to [SQLite](https://www.sqlite.org/) for providing a lightweight database solution.

## Author

[Your Name]

## Contact

For any inquiries, please contact [more.amani@yahoo.com](mailto:more.amani@yahoo.com).
