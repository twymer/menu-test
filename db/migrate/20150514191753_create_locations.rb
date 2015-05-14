class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.references :restaurant, index: true
      t.references :menu, index: true

      t.timestamps null: false
    end
    add_foreign_key :locations, :restaurants
    add_foreign_key :locations, :menus
  end
end
