class CreateProjectDetails < ActiveRecord::Migration
  def change
    create_table :project_details, {id: false} do |t|
      t.string :project_id, null: false
      t.string :project_name, null: false
      t.integer :project_year, null: false
      t.string :budgettype_id
      t.string :vendor_id
      t.string :contract_id
      t.date :contract_date

      t.timestamps
    end
      add_index :project_details, :project_id
  end
end
