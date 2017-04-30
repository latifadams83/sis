class CreateStaffDepartments < ActiveRecord::Migration[5.0]
  def up
    create_table :staff_departments do |t|
      t.string :name
      t.integer :created_by
      t.integer :updated_by
      t.references :staff_category, foreign_key: true
      t.timestamps
    end
  end

  def down
    drop_table :staff_departments
  end
end
