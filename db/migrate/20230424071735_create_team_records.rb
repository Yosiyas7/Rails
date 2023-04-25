class CreateTeamRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :team_records do |t|
      t.integer :wins
      t.integer :losses
      t.integer :ties
      t.integer :standings

      t.timestamps
    end
  end
end
