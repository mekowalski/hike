class Adventure < ApplicationRecord
  has_many :treks
  has_many :hikers, through: :treks

  def hiker_adventure
    self.hikers.first
  end
end
