class CreateClassofequipments < ActiveRecord::Migration
  def change
    create_table :classofequipments do |t|
      t.string :eqmclass_id
      t.string :eqmclass_name

      t.timestamps
    end
  end
end
