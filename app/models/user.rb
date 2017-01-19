class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :dishes, :through=> :profile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :omniauthable, :omniauth_providers => [:facebook]
  acts_as_messageable

    # def name
    #
    # end

    def mailboxer_email(object)
      #Check if an email should be sent for that object
      #if true
      return "define_email@on_your.model"
      #if false
      #return nil
    end
    
  enum role: [:Chef, :Host]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end
