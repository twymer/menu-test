require 'rails_helper'

RSpec.describe Location, :type => :model do
  it "has many meals" do
    steak = Meal.create(name: "Unicorn steak")
    shake = Meal.create(name: "Koolaid shake")
    fries = Meal.create(name: "Metal shaving fries")

    location = Location.create(
      address: "Unicorn steak & shake (this is not an address)",
    )

    location.create_menu(name: "Totally not made up menu")

    menu = location.menu
    menu.menu_items.create(meal: steak)
    menu.menu_items.create(meal: shake)
    menu.menu_items.create(meal: fries)

    expect(location.meals).to match_array([steak, shake, fries])
  end
end
