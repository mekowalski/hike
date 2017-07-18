class Adventure < ApplicationRecord
  belongs_to :hiker
  has_many :treks
end
