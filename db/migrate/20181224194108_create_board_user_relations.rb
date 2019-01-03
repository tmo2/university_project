class CreateBoardUserRelations < ActiveRecord::Migration
  def change
    create_table :board_user_relations do |t|

      t.integer :room_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
