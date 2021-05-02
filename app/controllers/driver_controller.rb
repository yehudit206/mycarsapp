class DriverController < ApplicationController
  def index
    @drivers=Driver.all
  end
  def show
    @driver = Driver.find(params[:id])
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(drivers_params)
    @driver.save

    if @driver.save
      redirect_to @driver
    else
      render :action => :index
    end
  end

  private
    def drivers_params
      params.require(:driver).permit(:name, :email,:birth)
    end
end
