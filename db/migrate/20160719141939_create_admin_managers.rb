class CreateAdminManagers < ActiveRecord::Migration
  def change
    create_table :admin_managers do |t|
      t.string :username
      t.string :password_digest
      t.string :authority

      t.timestamps null: false
    end
  end
end
