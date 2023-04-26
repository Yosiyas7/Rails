class AddPlayerImageToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :player_image, :text
  end
end
