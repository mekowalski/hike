class Adventure < ApplicationRecord
  # an adventure needs to include a hiker and a trek

  belongs_to :hiker
  belongs_to :trek 
end
