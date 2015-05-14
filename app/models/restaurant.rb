class Restaurant < ActiveRecord::Base
  has_many :locations
  has_many :meals, through: :locations
end
