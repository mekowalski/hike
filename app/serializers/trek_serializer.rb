class TrekSerializer < ActiveModel::Serializer
  attributes :id, :name, :state, :elevation, :level, :hiker_id, :adventure_id

  belongs_to :adventure
  belongs_to :hiker
end
