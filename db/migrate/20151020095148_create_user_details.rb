class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :login
      t.string :salt
      t.string :crypted_password

      t.timestamps
    end
  end
end
