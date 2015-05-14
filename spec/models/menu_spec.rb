require 'rails_helper'

RSpec.describe Menu, :type => :model do
  it "has many meals" do
    # This setup gets repeated in all of my tests,
    # on a real project I'd save some work by using factory girl
    steak = Meal.create(name: "Unicorn steak")
    shake = Meal.create(name: "Koolaid shake")
    fries = Meal.create(name: "Metal shaving fries")

    menu = Menu.create(name: "Totally not made up menu")

    # I no longer like the menu_items name I wrote on the whiteboard..
    menu.menu_items.create(meal: steak)
    menu.menu_items.create(meal: shake)
    menu.menu_items.create(meal: fries)

    expect(menu.meals).to match_array([steak, shake, fries])
  end
end
