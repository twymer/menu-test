require 'rails_helper'

RSpec.describe Menu, :type => :model do
  it "has many meals" do
    steak = Meal.create(name: "Unicorn steak")
    shake = Meal.create(name: "Koolaid shake")
    fries = Meal.create(name: "Metal shaving fries")

    menu = Menu.create(name: "Totally not made up menu")

    MenuItem.create(menu: menu, meal: steak)
    MenuItem.create(menu: menu, meal: shake)
    MenuItem.create(menu: menu, meal: fries)

    expect(menu.meals).to match_array([steak, shake, fries])
  end
end
