class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :admin_user_id
      t.integer :category_id
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
