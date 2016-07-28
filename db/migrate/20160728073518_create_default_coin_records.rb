class CreateDefaultCoinRecords < ActiveRecord::Migration
  def change
    create_table :default_coin_records do |t|
      t.integer :user_id
      t.integer :change_point
      t.integer :coin_type

      t.timestamps null: false
    end
  end
end
