class Dish < ActiveRecord::Base
  belongs_to :profile

  validates :name, :presence => true
end
