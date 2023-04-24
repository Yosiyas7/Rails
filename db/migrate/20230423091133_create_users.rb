class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :user_name
      t.integer :user_id
      t.string :user_email.text
      t.text :user_password

      t.timestamps
    end
  end
end
