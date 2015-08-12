class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :playerid
  has_one :team
end
