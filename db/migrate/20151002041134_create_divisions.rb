class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :division_id
      t.string :division_name
      t.string :div_short_name
      t.string :div_location

      t.timestamps
    end
  end
end
