class CreateStaffContacts < ActiveRecord::Migration[5.0]
  def up
    create_table :staff_contacts do |t|
      t.string :location
      t.string :town
      t.string :region
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :postal_code
      t.integer :staff_id
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
    add_index(:staff_contacts, :staff_id)
  end

  def down
    drop_table :staff_contacts
  end
end
