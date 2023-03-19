class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index 
        restaurants = Restaurant.all
        render json: restaurants, status: :accepted
    end
    def show 
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, status: :created
    end
    def destroy 
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    end
    private
    def render_not_found_response
        render json: {error: "restaurant not found"}, status: :not_found
    end
end
