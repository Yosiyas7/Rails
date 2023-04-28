class AddTeamImageToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :image, :text
  end
end
