class AddManyIndexToPosts < ActiveRecord::Migration
  def change
  	add_index :posts, :grade_id
  	add_index :posts, :category_id
  	add_index :posts, :lesson_id
  end
end
