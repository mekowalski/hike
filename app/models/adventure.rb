class Adventure < ApplicationRecord
  belongs_to :hiker
  has_many :treks
  # has_many :hikers, through: :treks


end
