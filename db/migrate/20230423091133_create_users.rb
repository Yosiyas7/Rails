class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :user_name
      t.integer :user_id
      t.text :user_email
      t.string :password_digest

      t.timestamps
    end
  end
end
