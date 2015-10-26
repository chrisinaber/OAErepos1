class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|
      t.string :kurupan_no
      t.string :dateof_upgrade
      t.string :detailof_upgrade
      t.string :paymentof_upgrade

      t.timestamps
    end
  end
end
