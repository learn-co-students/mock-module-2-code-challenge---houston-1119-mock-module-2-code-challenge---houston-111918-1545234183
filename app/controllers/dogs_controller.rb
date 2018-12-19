class DogsController < ApplicationController

  def index
    @dog = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
    Dog.create(dog_params)
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
