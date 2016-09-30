class Profile < ApplicationRecord
  geocoded_by :address1
  after_validation :geocode
end
