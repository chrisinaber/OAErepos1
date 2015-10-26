class CreateReceiptDetails < ActiveRecord::Migration
  def change
    create_table :receipt_details do |t|
      t.string :receipt_detail_id
      t.string :eqmtype_id
      t.string :eqmtype_amount
      t.string :eqmtype_priceunit

      t.timestamps
    end
  end
end
