class BoardUserRelation < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat_board
end
