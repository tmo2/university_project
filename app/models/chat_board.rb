class ChatBoard < ActiveRecord::Base

  has_many :users, through :board_user_relations
end
