class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :post_id
      t.integer :version_number
      t.integer :original_owner

      t.timestamps
    end
    add_index :versions, :post_id
    add_index :versions, :original_owner
  end
end
