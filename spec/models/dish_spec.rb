require 'rails_helper'

describe Dish do
  it { should validate_presence_of :name }
  it { should belong_to :user }
end
