class CreateStaffQualifications < ActiveRecord::Migration[5.0]
  def up
    create_table :staff_qualifications do |t|
      t.string :type
      t.string :name
      t.string :description
      t.date :date_earned
      t.integer :staff_id
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
    add_index(:staff_qualifications, :staff_id)
  end

  def down
    drop_table :staff_qualifications
  end
end
