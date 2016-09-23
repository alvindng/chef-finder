require 'rails_helper'

describe "the dish feature" do
  it "allow a user to add a dish", js: true do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit user_path(user)
    click_on 'Add New Dish'
    fill_in 'Name', :with => 'Rosemary Lamb Chops'
    fill_in 'Description', :with => 'Served with Rosemary'
    fill_in 'Image', :with => 'http://www.simplyrecipes.com/wp-content/uploads/2013/02/rosemary-crusted-lamb-shops-horiz-a-1600.jpg'
    click_on 'Add New Dish'
    expect(page).to have_content 'Served with Rosemary'
  end
end
