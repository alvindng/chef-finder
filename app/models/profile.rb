class Profile < ApplicationRecord
  belongs_to :user
  has_many :dishes
  before_create :full_address

  def full_address
    self.full_address = [address1, address2, city, state, zipcode].join(',');
  end

  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){ obj.address1.present? and obj.address1_changed? }

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
