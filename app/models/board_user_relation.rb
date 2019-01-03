class BoardUserRelation < ActiveRecord::Base

  has_one :user_id
  belongs_to :chat_boards
end
