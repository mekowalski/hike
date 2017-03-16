class Trek < ApplicationRecord
  # will belong to one hiker but then will belong to many hikers if another hikes this trek
  # join table comes to play
  has_many :adventures
  has_many :hikers, through: :adventures
end
