class CreateCategoryofequipments < ActiveRecord::Migration
  def change
    create_table :categoryofequipments do |t|
      t.string :eqmclass_id
      t.string :eqmcategory_id
      t.string :eqmcategory_name

      t.timestamps
    end
  end
end
