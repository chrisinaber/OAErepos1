class CreateFixUpgrades < ActiveRecord::Migration
  def change
    create_table :fix_upgrades do |t|
      t.string :kurupan_no
      t.date :dateof_work
      t.string :detail_fix_upgrade
      t.float :payment

      t.timestamps
    end
  end
end
