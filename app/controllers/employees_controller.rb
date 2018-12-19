class EmployeesController < ApplicationController
  def index
    @employee = Employee.all
  end
    
  def show
    @employee = Employee.find(params[:id])
  end
    
  def create
    Employee.create(employee_params)
    redirect_to employees_path
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    employee = Employee.find(params[:id])
    employee.update(employee_params)
    redirect_to employee
  end

  def destroy
    employee = Employee.find(params[:id])
    employee.destroy
    redirect_to employees_path
  end

    
private
    
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
  end
end
