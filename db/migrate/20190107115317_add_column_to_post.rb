class AddColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :place_id, :integer
  end
end
