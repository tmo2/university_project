class CreateChatBoards < ActiveRecord::Migration
  def change
    create_table :chat_boards do |t|

      t.timestamps null: false
    end
  end
end
