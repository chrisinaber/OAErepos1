class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :budgettype_id
      t.string :budgettype_name

      t.timestamps
    end
  end
end
