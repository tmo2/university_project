class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :title
      t.text :content
      t.integer :category_id
      t.integer :user_id
      t.integer :status, default: 0
      t.timestamps null: false
    end
  end
end
