class RemoveIndexOnSubject < ActiveRecord::Migration
  def change
  	remove_index :subjects, :grade_id
  end
end
