class Renamemapidtogameid < ActiveRecord::Migration
  def change
  	rename_column :demos, :mapid, :gameid
  end
end
