puts "Start seeding"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seed data for pizzas table
 Pizza.create(name: "Margherita", ingredients: "Tomato sauce, mozzarella cheese, basil")
 Pizza.create(name: "Pepperoni", ingredients: "Tomato sauce, mozzarella cheese, pepperoni")
  Pizza.create(name: "Vegetarian", ingredients: "Tomato sauce, mozzarella cheese, mushrooms, onions, bell peppers")
 Pizza.create(name: "Hawaiian", ingredients: "Tomato sauce, mozzarella cheese, ham, pineapple")


 Restaurant.create(name: "Pizzeria Uno", address: "29 E Ohio St, Chicago, IL 60611")
 Restaurant.create(name: "Lou Malnati's Pizzeria", address: "439 N Wells St, Chicago, IL 60654")
 Restaurant.create(name: "Giordano's", address: "730 N Rush St, Chicago, IL 60611")
Restaurant.create(name: "Pequod's Pizza", address: "2207 N Clybourn Ave, Chicago, IL 60614")

# Seed data for restaurant_pizzas table
RestaurantPizza.create(pizza_id: 1, restaurant_id: 1, price: 10.99)
RestaurantPizza.create(pizza_id: 1, restaurant_id: 2, price: 12.99)
RestaurantPizza.create(pizza_id: 2, restaurant_id: 2, price: 14.99)
RestaurantPizza.create(pizza_id: 2, restaurant_id: 3, price: 15.99)
RestaurantPizza.create(pizza_id: 3, restaurant_id: 3, price: 16.99)
RestaurantPizza.create(pizza_id: 4, restaurant_id: 4, price: 17.99)


puts "Done seeding"