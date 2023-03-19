class PizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

        def index 
            pizzas = Pizza.all 
            render json: pizzas, status: :created
        end
    private
    def render_not_found_response
        render json: {error: "pizza not found"}, status: :not_found
    end
end
