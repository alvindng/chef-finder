class Profile < ApplicationRecord
  geocoded_by :address1
  after_validation :geocode
  belongs_to :user
  has_many :dishes
end
