class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.references :pizza, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
