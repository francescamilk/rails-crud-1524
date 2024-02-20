Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # GET http://localhost:3000/restaurants
  get "/restaurants",     to: "restaurants#index"

  # GET http://localhost:3000/restaurants/4
  # GET http://localhost:3000/restaurants/2
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"
end
