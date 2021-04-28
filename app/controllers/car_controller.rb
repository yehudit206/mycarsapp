class CarController < ApplicationController
  def all_cars
    @cars=Car.all
  end
  def view_car
@car=Car.find(params[:id])
  end
  
  def new
    @car = Car.new
  end
  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car
    else
      render :new
    end
  end

  private
    def car_params
      params.require(:car).permit(:title, :type,:colorID)
    end
end