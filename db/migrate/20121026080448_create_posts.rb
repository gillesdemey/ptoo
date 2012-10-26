class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :author_id
      t.integer :category_id
      t.string :slug

      t.timestamps
    end
  end
end
