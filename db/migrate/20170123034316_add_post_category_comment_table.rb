class AddPostCategoryCommentTable < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end

    create_table :categories do |t|
      t.string :title 

      t.timestamps null: false
    end

    create_table :connections do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps null: false
    end

    create_table :comments do |t|
      t.text :content
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
