require 'rails_helper'

describe Chef do
  it { should validate_presence_of :name }
  it { should have_many :dishes }
end
