class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.text :manager_name
      t.text :country
      t.integer :age
      t.integer :coaching_year

      t.timestamps
    end
  end
end
