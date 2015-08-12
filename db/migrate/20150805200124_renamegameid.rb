class Renamegameid < ActiveRecord::Migration
  def change
  	rename_column :maps, :game_id, :gameid
  end
end
