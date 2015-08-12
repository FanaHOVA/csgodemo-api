class Player < ActiveRecord::Base
	validates :playerid, :name, presence: true
	belongs_to :team
end
