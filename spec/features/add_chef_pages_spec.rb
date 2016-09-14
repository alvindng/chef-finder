require 'rails_helper'

describe "the add a chef process" do
  it "adds a new chef" do
    visit chefs_path
    click_link 'Add a New Chef'
    fill_in 'Name', :with => 'Luke Lask'
    fill_in 'Phone', :with => '124-214-1244'
    fill_in 'Address', :with => '123 Home Ave'
    click_on 'Create Chef'
    expect(page).to have_content 'Luke Lask'
  end

  it "gives error when no name is entered" do
    visit new_chef_path
    click_on 'Create Chef'
    expect(page).to have_content 'errors'
  end
end
