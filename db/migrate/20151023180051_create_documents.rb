class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
    add_index :documents, :user_id
    add_index :documents, :post_id
  end
end
