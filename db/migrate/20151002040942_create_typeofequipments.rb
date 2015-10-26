class CreateTypeofequipments < ActiveRecord::Migration
  def change
    create_table :typeofequipments do |t|
      t.string :eqmcategory_id
      t.string :eqmtype_id
      t.string :eqmtype_name

      t.timestamps
    end
  end
end
