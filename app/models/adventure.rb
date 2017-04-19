class Adventure < ApplicationRecord
  # an adventure needs to include a hiker and a trek
  has_many :treks
  has_many :hikers, through: :treks

  def hiker_adventure
    self.hikers.first
  end
end
