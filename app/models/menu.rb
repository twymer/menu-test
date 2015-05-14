class Menu < ActiveRecord::Base
  has_many :menu_items
  has_many :meals, through: :menu_items
end
