class CreateDefaultUsers < ActiveRecord::Migration
  def change
    create_table :default_users do |t|
      t.string :email
      t.string :ezid
      t.string :password_digest
      t.integer :total_point
      t.string :via_site

      t.timestamps null: false
    end
  end
end
