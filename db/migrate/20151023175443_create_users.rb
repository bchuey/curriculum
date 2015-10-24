class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.integer :role_id

      t.timestamps
    end
    add_index :users, :role_id
  end
end
