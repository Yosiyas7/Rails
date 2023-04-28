class AddManagerImageToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :image, :text
  end
end
