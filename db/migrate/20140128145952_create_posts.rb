class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :price
      t.string :email
      t.string :description
      t.string :edit_key
      t.integer :category_id
      t.timestamps
    end
  end
end
