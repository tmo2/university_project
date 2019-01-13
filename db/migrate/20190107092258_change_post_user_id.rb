class ChangePostUserId < ActiveRecord::Migration
  def change
    change_column_null :posts, :user_id, false, 1
  end
end
