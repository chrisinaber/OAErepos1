class CreateEquipmentDetails < ActiveRecord::Migration
  def change
    create_table :equipment_details, {id: false} do |t|
      t.string :kurupan_no, null: false
      t.string :eqmtype_id, null: false
      t.string :running_no, null: false
      t.string :project_id, null: false
      t.float :quaintity_emp, null: false
      t.string :status_detail
      t.float :ict_price
      t.float :bidding_price
      t.integer :vendor_id
      t.string :receipt_no
      t.string :emp_brand
      t.string :emp_version
      t.string :spec_cpu
      t.string :spec_hd
      t.string :spec_ram
      t.string :mornitor_brand
      t.string :mornitor_version
      t.string :mornitor_sn1
      t.string :mornitor_sn2
      t.string :eqm_sn1
      t.string :eqm_sn2
      t.string :eqm_sn3
      t.string :eqm_sn4
      t.string :user_name
      t.string :delivery_no
      t.string :record_person
      t.date :record_date
      t.string :remakes

      t.timestamps
    end
      add_index :equipment_details, :kurupan_no
  end
end
