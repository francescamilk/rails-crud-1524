class RestaurantsController < ApplicationController
    def index
        # fetch all restaurants
        @restaurants = Restaurant.all
    end

    def show
        # find a restaurant by id
        id = params[:id].to_i
        @restaurant = Restaurant.find(id)
    end
end
