class RemoveStatusFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :status, :integer
  end
end
