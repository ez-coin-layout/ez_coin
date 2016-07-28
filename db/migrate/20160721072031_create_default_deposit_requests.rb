class CreateDefaultDepositRequests < ActiveRecord::Migration
  def change
    create_table :default_deposit_requests do |t|
      t.integer :user_id
      t.integer :amount
      t.integer :status
      t.integer :request_point

      t.timestamps null: false
    end
  end
end
