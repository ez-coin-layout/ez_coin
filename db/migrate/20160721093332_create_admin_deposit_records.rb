class CreateAdminDepositRecords < ActiveRecord::Migration
  def change
    create_table :admin_deposit_records do |t|
      t.integer :user_id
      t.integer :deposit_request_id
      t.integer :deposit_method
      t.integer :amount
      t.integer :add_point

      t.timestamps null: false
    end
  end
end
