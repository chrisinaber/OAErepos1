class CreateVendorDetails < ActiveRecord::Migration
  def change
    create_table :vendor_details, {id: false} do |t|
      t.string :vendor_id
      t.string :vendor_name
      t.string :vendor_address
      t.string :vendor_telephone
      t.string :vendor_email
      t.string :vendor_comment

      t.timestamps
    end
      add_index :vendor_details, :vendor_id
  end
end
