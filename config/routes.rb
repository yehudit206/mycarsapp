

Rails.application.routes.draw do
 # root "HomePage"
  get "/cars", to: "car#all_cars"

  get "/cars/:id", to: "car#view_car"
  get "/car/new", to: "car#new"
  post '/cars', to: 'car#create'

 resources :cars
  get "/ViewCar", to: "car#view_car"

end



Rails.application.routes.draw do
  root "driversandcars#HomePage"
  get "/", to: "driversandcars#HomePage"

  get "/drivers", to: "driver#index"
  get "/drivers/:id", to: "driver#show"
  get "/driver/new", to: "driver#new"
  post '/drivers', to: 'driver#create'
post "/driversandcars/select_car",to:"driversandcars#select_car"
post "/driversandcars/select_driver",to:"driversandcars#select_driver"

post "/driversandcars/submit",to:"driversandcars#submit"
  get "driversandcars", to: "driversandcars#index"
  resources :drivers
  # resources :articles do
  #   resources :comments

end
