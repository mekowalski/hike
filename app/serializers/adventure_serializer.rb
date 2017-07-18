class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :hiker_id

  has_many :treks
  belongs_to :hiker
end
