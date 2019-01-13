class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|

      t.integer :post_id, null: false
      t.integer :requester_id
      t.integer :contractor_id
      t.timestamps null: false
    end
  end
end
