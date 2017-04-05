class Trek < ApplicationRecord
  # will belong to one hiker but then will belong to many hikers if another hikes this trek
  # join table comes to play
  belongs_to :hiker
  belongs_to :adventure
end
