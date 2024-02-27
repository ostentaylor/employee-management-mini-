# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

Create employees
Employee.create!(
  firstname: 'Osteen',
  lastname: 'Kimanzi',
  employee_number: 12345,
  salary: 50000,
  email: 'osteenk@gmail.com'
)

# Employee.create!(
#   firstname: 'Jane',
#   lastname: 'Kavula',
#   employee_number: 67890,
#   salary: 60000,
#   email: 'kavula12@gmail.com'
# )

# Employee.create!(
#   firstname: 'John',
#   lastname: 'Doe',
#   employee_number: 12395,
#   salary: 50000,
#   email: 'john@example.com'
# )


# Add more employee records as needed...
