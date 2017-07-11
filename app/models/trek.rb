class Trek < ApplicationRecord
  belongs_to :hiker
  belongs_to :adventure

  def adventure_attributes=(adventure_attributes)
    # {"title"=>""}
    if adventure_id != nil
      adventure = Adventure.find_or_create_by(adventure_attributes)
      adventure.treks << self
    end
  end

  def adventure_name=(name)
    # binding.pry
    if name.present?
      self.adventure = Adventure.find_or_create_by(:title => name)
    end
  end

  def adventure_name
  end

  def adventure_selection=(id)
    if id.present? && adventure = Adventure.find(id)
      self.adventure = adventure
    end
  end

  def adventure_selection
  end
end
