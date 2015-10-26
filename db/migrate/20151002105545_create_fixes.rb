class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|
      t.string :kurupan_no
      t.string :dateof_fix
      t.string :detailof_fix
      t.string :paymentof_fix

      t.timestamps
    end
  end
end
