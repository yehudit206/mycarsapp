class DriversandcarsController < ApplicationController
  def index
    @drivers=Driver.all
    @cars=Car.all
  end

  def select_car 
    @carSelectedID = params[:optionValue]
    @carSelected=Car.find(@carSelectedID)
    @links=Link.where(car:@carSelected)
    @drivers=[]
    @links.each do |link|
      @drivers.append(Driver.find(link.driver_id).name)
    end
    render json: {links: @links,drivers:@drivers}
  end 
  
  def select_driver 
    @driverSelectedID = params[:optionValue]
    @driverSelected=Driver.find(@driverSelectedID)
    @links=Link.where(driver:@driverSelected)
    @cars=[]
    @links.each do |link|
      @cars.append(Car.find(link.car_id).title)
    end
    render json: {links: @links,cars:@cars}

  end 
  def submit

    @carSelectedID = params[:car]
    @carSelected=Car.find(@carSelectedID)
    @driverSelectedID = params[:driver]
    @driverSelected=Driver.find(@driverSelectedID)
    @links=Link.find_by(car:@carSelected,driver:@driverSelected)
    if @links ==nil
      @newLink=Link.new(car:@carSelected,driver:@driverSelected)
      @newLink.save
      if @newLink.save
        render json: {text:"Connect car to driver - sucsses"}
      else
         render json: {text:"Connect car to driver - faild"}
      end
    else
      render json: {text:"This car and driver has connected"}
    end


  end

end
