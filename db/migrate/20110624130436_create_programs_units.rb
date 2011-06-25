class CreateProgramsUnits < ActiveRecord::Migration
  def up
    create_table :programs_units, :id => false do |t|
      t.integer :program_id
      t.integer :unit_id
    end

    add_index :programs_units, :program_id
    add_index :programs_units, :unit_id
  end

  def down
    drop_table :programs_units
  end
end
