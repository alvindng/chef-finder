class Profile < ApplicationRecord
  belongs_to :user
  has_many :dishes
  geocoded_by :address1
  after_validation :geocode
end
