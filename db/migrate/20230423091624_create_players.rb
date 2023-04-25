class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :player_id
      t.text :player_name
      t.text :player_country
      t.text :player_position
      t.integer :player_rating
      t.integer :player_age
      t.text :player_stats
      t.integer :team_id

      t.timestamps
    end
  end
end
