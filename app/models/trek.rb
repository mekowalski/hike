class Trek < ApplicationRecord
  # will belong to one hiker but then will belong to many hikers if another hikes this trek
  # join table comes to play
  belongs_to :hiker
  belongs_to :adventure

  def adventure_attributes=(adventure_attributes) #take adventure attributes
    adventure = Adventure.find_or_create_by(adventure_attributes) #and build an adventure instance
    adventure.treks << self #add adventure to that trek's adventure
  end
end
