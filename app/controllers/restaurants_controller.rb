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

    def new
        @restaurant = Restaurant.new
    end

    def create
        # create == new + save
        @restaurant = Restaurant.create(restaurant_params)

        redirect_to restaurant_path(@restaurant), notice: "Thanks for creating!"
    end

    private

    def restaurant_params
        # strong params (manually & specifically permit parameters)
        params.require(:restaurant).permit(:name, :address, :rating)
    end
end
