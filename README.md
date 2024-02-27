# Employee Management Backend

## Description
This is the backend application for managing employee records. It provides API endpoints for creating, retrieving, updating, and deleting employee records.

## Installation
1. Clone the repository:
   
   git clone https://github.com/your_username/employee-management-backend.git

## Navigate to the project directory 
cd employee-management-backend

## Install dependencies
bundle install

## Set up the database
rails db:create
rails db:migrate

## Seed the database
rails db:seed


# USAGE

## Start the Rails Server
rails server

- Access the API endpoints using a tool like Postman or by making HTTP requests from your frontend application.
## API Endpoints

1. GET /employees: Retrieve all employees.
2. POST /employees: Create a new employee.
3. DELETE /employees/:id: Delete an employee with the specified ID.


# TESTING

You can test the API endpoints using tools like Postman .

# CONTRIBUTING

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

# LICENSE

This project is licensed under the MIT License.