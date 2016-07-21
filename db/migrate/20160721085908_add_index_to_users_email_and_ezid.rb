class AddIndexToUsersEmailAndEzid < ActiveRecord::Migration
  def change
    add_index :default_users, [:email, :ezid], unique: true
  end
end
