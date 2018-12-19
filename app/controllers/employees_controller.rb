class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end
    
    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        Employee.create(employee_params)
        redirect_to employees_path
    end
    
    # def edit
    #     @dog = Dog.find(params[:id])
    # end

    # def update
    #     @dog = Dog.find(params[:id])
    #     dog.update(dog_params)
    #     redirect_to dog
    # end

    # def destroy

    # end

    # private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
     end


end
