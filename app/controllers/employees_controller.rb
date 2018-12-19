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

  def new
  end
    
private
    
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
  end
end
