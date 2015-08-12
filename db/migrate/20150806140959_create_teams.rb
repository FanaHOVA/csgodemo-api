class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :teamid
      t.string :nationality

      t.timestamps null: false
    end

    add_column :players, :team_id, :string
  end
end
