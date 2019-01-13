class RenameBoardUserRelationRoomIdToBoardId < ActiveRecord::Migration
  def change
    rename_column :board_user_relations, :room_id, :chat_board_id
  end
end
