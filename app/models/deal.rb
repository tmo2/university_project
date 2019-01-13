class Deal < ActiveRecord::Base
  belongs_to :post
  belongs_to :requester, class_name: 'User', foreign_key: :requester_id
  belongs_to :contractor, class_name: 'User', foreign_key: :contractor_id

  enum status: %w[applied accepted working delivered paid rejected]
end
