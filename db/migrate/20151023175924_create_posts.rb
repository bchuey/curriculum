class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :subject_id
      t.integer :user_id

      t.timestamps
    end
    add_index :posts, :subject_id
    add_index :posts, :user_id
  end
end
