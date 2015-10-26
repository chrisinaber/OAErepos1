class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :division_id
      t.string :section_id
      t.string :section_name
      t.string :section_location

      t.timestamps
    end
  end
end
