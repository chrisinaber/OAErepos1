class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :receipt_no
      t.string :receipt_date
      t.string :receipt_sendor
      t.string :receipt_receiver

      t.timestamps
    end
  end
end
