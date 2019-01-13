class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :place
  has_many :deal
end
