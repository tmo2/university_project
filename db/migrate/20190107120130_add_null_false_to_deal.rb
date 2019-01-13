class AddNullFalseToDeal < ActiveRecord::Migration
  def change
    change_column_null :deals, :requester_id, false
    change_column_null :deals, :contractor_id, false
  end
end
