class Demo < ActiveRecord::Base
	validates :team1id, :team2id, :gameid, :tournament, :download, presence: true
end
