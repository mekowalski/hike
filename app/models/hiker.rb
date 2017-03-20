class Hiker < ApplicationRecord
  #figure out join table
  has_many :adventures
  has_many :treks, through: :adventures

  has_secure_password
  validates_confirmation_of :password
  validates_presence_of :password
  validates_presence_of :email

  def self.create_with_omniauth(auth)
    create! do |hiker|
      hiker.provider = auth['provider']
      hiker.uid = auth['uid']
      hiker.name = auth['info']['name']
    end
  end
end
