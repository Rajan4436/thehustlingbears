class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug, unique: true
      t.boolean :active, default: false
      t.string :meta_desc
      t.integer :post_type, default: 1
      t.text :meta_keywords

      t.timestamps
    end
    add_index :posts, :post_type
  end
end
