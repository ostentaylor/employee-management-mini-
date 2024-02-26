class EmployeesController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create, :destroy]
    before_action :set_employee, only: [:destroy]
  
    # GET /employees
    # Retrieve all employee records from the database
    def index
      @employees = Employee.all
      render json: @employees
    end
  
    # POST /employees
    # Create a new employee record in the database
    def create
      @employee = Employee.new(employee_params)
  
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
  
    # Use callbacks to share common setup or constraints between actions.
    # Find the employee record by id
    def set_employee
        @employee = Employee.find_by(id: params[:id])
      end
  
    # Only allow a trusted parameter "white list" through.
    # Permit specific attributes for mass assignment
    def employee_params
      params.require(:employee).permit(:firstname, :lastname, :employee_number, :salary, :email)
    end
  end
  