class AddIndexToCategory < ActiveRecord::Migration
  def change
  	add_index :categories, :grade_id
  end
end
