class Chat < ActiveRecord::Base

  belongs_to :chat_board
  belongs_to :users
end
