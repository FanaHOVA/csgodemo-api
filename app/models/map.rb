class Map < ActiveRecord::Base
  validates :gameid, uniqueness: true
  validates :name, :gameid, presence: true
end
