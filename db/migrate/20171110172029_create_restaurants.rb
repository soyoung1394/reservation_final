class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      
      t.string  :name
      t.string  :address
      t.string  :phone_number
      t.string  :owner_number
      t.string  :category
      t.text    :image
      t.integer :main_menu
      t.integer :max_visitor
      
      t.timestamps null: false
    end
  end
end
