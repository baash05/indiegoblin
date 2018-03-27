class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :slug
      t.string :title
      t.string :subtitle
      t.text :body
      t.boolean :published
      t.string :category

      t.timestamps
    end
    add_index :posts, :slug
  end
end
