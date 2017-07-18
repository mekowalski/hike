class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :treks
  belongs_to :hiker
end
