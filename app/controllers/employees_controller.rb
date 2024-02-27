class EmployeesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :destroy]
  before_action :set_employee, only: [:destroy]

  # GET /employees
  # Retrieve all employee records from the database
  def index
    @employees = Employee.all
    render json: @employees
  end

  def search
    # Extract search term from query parameters
    search_term = params[:q]

    # Perform search based on search term
    @employees = Employee.where('lower(firstname) LIKE ? OR lower(lastname) LIKE ? OR lower(email) LIKE ?', "%#{search_term.downcase}%", "%#{search_term.downcase}%", "%#{search_term.downcase}%")

    # Return filtered employees as JSON response
    render json: @employees
  end

  # POST /employees
  # Create a new employee record in the database
  def create
    @employee = Employee.new(employee_params)
  
    # Generate a unique employee number
    @employee.employee_number = generate_unique_employee_number
  
    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/:id
  # Delete an employee record from the database
  def destroy
    if @employee
      @employee.destroy
      head :no_content
    else
      render json: { error: "Employee not found" }, status: :not_found
    end
  end

  private

  # Generate a unique employee number that does not exist in the database
  def generate_unique_employee_number
    loop do
      employee_number = generate_employee_number
      return employee_number unless Employee.exists?(employee_number: employee_number)
    end
  end
  
  

  def generate_employee_number
    # Define the range for the employee number
    min_number = 100000
    max_number = 999999
    
    # Generate a random number within the range
    rand(min_number..max_number)
  end

  # Use callbacks to share common setup or constraints between actions.
  # Find the employee record by id
  def set_employee
    @employee = Employee.find_by(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  # Permit specific attributes for mass assignment
  def employee_params
    params.require(:employee).permit(:firstName, :lastName, :employee_number, :salary, :email)
  end
end
