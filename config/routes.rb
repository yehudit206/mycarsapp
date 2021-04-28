

Rails.application.routes.draw do
  root "car#index"
  get "/cars", to: "car#all_cars"
  get "/cars/:id", to: "car#view_car"
  get "/car/new", to: "car#new"

 resources :cars
  get "/ViewCar", to: "car#view_car"

end



Rails.application.routes.draw do
  get "/drivers", to: "driver#index"
end
