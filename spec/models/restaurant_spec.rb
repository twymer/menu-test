require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  it "has many meals" do
    steak = Meal.create(name: "Unicorn steak")
    shake = Meal.create(name: "Koolaid shake")
    fries = Meal.create(name: "Metal shaving fries")

    menu = Menu.create(name: "Totally not made up menu")
    menu.menu_items.create(meal: steak)
    menu.menu_items.create(meal: shake)
    menu.menu_items.create(meal: fries)

    restaurant = Restaurant.create(name: "Unicorn Steak & Shake")
    restaurant.locations.create(
      address: "Winterfell",
      menu: menu,
    )

    expect(restaurant.meals).to match_array([steak, shake, fries])
  end
end
