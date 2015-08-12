class DemoSerializer < ActiveModel::Serializer
  attributes :id, :gameid, :team1id, :team2id, :download, :tournament
end
