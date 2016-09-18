class Chef < ActiveRecord::Base
  has_many :dishes

  validates :name, :presence => true
end
