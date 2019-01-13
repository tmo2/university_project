class AddStatusToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :status, :integer, null: false, default: 0
  end
end
