class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :post_id
  end
end
