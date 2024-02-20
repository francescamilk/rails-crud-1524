class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

    def index
        # fetch all restaurants
        @restaurants = Restaurant.all
    end

    def show
        # find a restaurant by id
        # set_restaurant()
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        # create == new + save
        @restaurant = Restaurant.create(restaurant_params)

        redirect_to restaurant_path(@restaurant), notice: "Thanks for creating!"
    end

    def edit
        # find the given restaurant by id
        # set_restaurant()
    end

    def update
        # find the given restaurant by id
        # update the attributes
        # set_restaurant()
        @restaurant.update(restaurant_params)

        redirect_to restaurant_path(@restaurant.id)
    end

    def destroy
        # find the given restaurant by id
        # delete it
        # set_restaurant()
        @restaurant.destroy

        redirect_to restaurants_path, status: :see_other
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        # strong params (manually & specifically permit parameters)
        params.require(:restaurant).permit(:name, :address, :rating)
    end
end
