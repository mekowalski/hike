class Hiker < ApplicationRecord
  has_many :treks
  has_many :adventures, through: :treks

  has_secure_password
  validates_confirmation_of :password
  validates :email, presence: true, uniqueness: true

  def self.create_with_omniauth(auth)
    create! do |hiker|
      hiker.provider = auth['provider']
      hiker.uid = auth['uid']
      hiker.email = auth['info']['email']
      hiker.password = SecureRandom.hex
    end
  end
end
