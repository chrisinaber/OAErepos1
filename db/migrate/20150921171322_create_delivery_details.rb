class CreateDeliveryDetails < ActiveRecord::Migration
  def change
    create_table :delivery_details do |t|
      t.string :delivery_no, null: false
      t.string :division_id, null: false
      t.string :emptype_id, null: false
      t.integer :emptype_amount, null: false

      t.timestamps
    end
    add_index :delivery_details, :delivery_no
  end
end
