class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :team_name
      t.integer :team_id
      t.integer :total_rating
      t.text :logo

      t.timestamps
    end
  end
end
