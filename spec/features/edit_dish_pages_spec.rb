require 'rails_helper'

describe "the edit a dish process" do
  it "edits a dish" do
    chef = Chef.create(:name => 'John Doe', :phone => "312-555-1702", :address => "123 Fake St")
    dish = Dish.create(:name => 'Lamb Chops', :description => "Chops from a Lamb", :image => "http://www.simplyrecipes.com/wp-content/uploads/2013/02/rosemary-crusted-lamb-shops-horiz-a-1600.jpg", :chef_id => chef.id)
    visit edit_chef_dish_path(chef.id, dish)
    fill_in 'Description', :with => 'Served with Rosemary'
    click_on 'Update Dish'
    expect(page).to have_content 'Served with Rosemary'
  end
end
