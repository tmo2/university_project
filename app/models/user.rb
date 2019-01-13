class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :destroy
  has_many :board_user_relations
  has_many :chat_boards, through: :board_user_relations
  has_many :chats

  def icon
    'user_icon.png'
  end
end
