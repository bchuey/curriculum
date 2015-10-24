class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :subject_id

      t.timestamps
    end
    add_index :lessons, :subject_id
  end
end
