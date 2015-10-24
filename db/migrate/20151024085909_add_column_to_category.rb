class AddColumnToCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :grade_id, :integer
  end
end
