class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :menu, index: true
      t.references :meal, index: true

      t.timestamps null: false
    end
    add_foreign_key :menu_items, :menus
    add_foreign_key :menu_items, :meals
  end
end
