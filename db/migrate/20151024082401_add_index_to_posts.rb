class AddIndexToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :grade_id, :integer
  	add_column :posts, :category_id, :integer
  	add_column :posts, :lesson_id, :integer
  end
end
