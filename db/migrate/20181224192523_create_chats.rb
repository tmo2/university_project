class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|

      t.integer :user_id
      t.integer :board_id
      t.text :content
      t.timestamps null: false
    end
  end
end
