class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :source
      t.string :source_post
      t.string :source_thumbnail
      t.integer :views
      t.integer :likes
      t.string :license

      t.timestamps
    end
  end
end
