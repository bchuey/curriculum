class AddIndexToSubject < ActiveRecord::Migration
  def change
  	add_index :subjects, :grade_id
  end
end
