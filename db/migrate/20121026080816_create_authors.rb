class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :image
      t.string :twitter

      t.timestamps
    end
  end
end
