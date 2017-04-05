class Adventure < ApplicationRecord
  # an adventure needs to include a hiker and a trek
  has_many :treks
  has_many :hikers, through: :treks
end
