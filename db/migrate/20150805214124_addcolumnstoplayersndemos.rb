class Addcolumnstoplayersndemos < ActiveRecord::Migration
  def change
  	add_column :demos, :mapid, :string
  	add_column :demos, :team1id, :string
  	add_column :demos, :team2id, :string
  	add_column :demos, :download, :string
  	add_column :demos, :tournament, :string

  	add_column :players, :playerid, :string
  	add_column :players, :name, :string
  end
end
