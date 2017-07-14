class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :treks
  has_many :hikers, through: :treks
end
