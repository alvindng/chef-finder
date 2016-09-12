require 'rails_helper'

describe Chef do
  it { should validate_presence_of :name }
end
