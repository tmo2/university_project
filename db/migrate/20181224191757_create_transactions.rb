class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|

      t.integer :requester_id
      t.integer :contractor_id
      t.integer :status
      t.integer :post_id
      t.timestamps null: false
    end
  end
end
