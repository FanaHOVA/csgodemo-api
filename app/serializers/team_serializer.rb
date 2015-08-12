class TeamSerializer < ActiveModel::Serializer
  attributes :id, :teamid, :name, :nationality
  has_many :players
end
