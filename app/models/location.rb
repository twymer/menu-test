class Location < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :menu
end
