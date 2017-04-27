class Trek < ApplicationRecord
  belongs_to :hiker
  belongs_to :adventure

  def adventure_attributes=(adventure_attributes)
    if adventure_id != nil
      adventure = Adventure.find_or_create_by(adventure_attributes)
      adventure.treks << self
    end
  end
end
