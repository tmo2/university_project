class ChatBoard < ActiveRecord::Base
  has_many :board_user_relations
  has_many :users, through: :board_user_relations
end
