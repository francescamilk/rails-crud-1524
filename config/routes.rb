Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # GET http://localhost:3000/restaurants/new
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"

  # POST http://localhost:3000/restaurants
  post "/restaurants",    to: "restaurants#create"

  # GET http://localhost:3000/restaurants
  get "/restaurants",     to: "restaurants#index"

  # GET http://localhost:3000/restaurants/4
  # GET http://localhost:3000/restaurants/2
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"

  # GET http://localhost:3000/restaurants/1/edit
  get "/restaurants/:id/edit", to: "restaurants#edit", as: "edit_restaurant"

  # PATCH http://localhost:3000/restaurants/1
  patch "/restaurants/:id",    to: "restaurants#update"
end
