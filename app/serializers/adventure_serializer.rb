class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :hiker_id

  belongs_to :hiker
  has_many :treks
end
