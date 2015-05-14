class Location < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :menu

  has_many :meals, through: :menu
end
