class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :adventure_title

  has_many :treks
  has_many :hikers, through: :treks

  def adventure_title
    binding.pry
    Adventure.find_by_id(object.adventure_id).title
  end
end
