class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    wrap_parameters format: []
    def create 
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
    end
    private
    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
