class Hiker < ApplicationRecord
  #figure out join table
  has_many :adventures
  has_many :treks, through: :adventures

  def self.create_with_omniauth(auth)
    create! do |hiker|
      hiker.provider = auth['provider']
      hiker.uid = auth['uid']
      hiker.name = auth['info']['name']
    end
  end
end
