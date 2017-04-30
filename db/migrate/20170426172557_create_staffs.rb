class CreateStaffs < ActiveRecord::Migration[5.0]
  def up
    create_table :staffs do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :religious_denomination
      t.string :image
      t.boolean :disability
      t.string :disability_desc
      t.date    :date_join
      t.integer :staff_category_id
      t.integer :staff_department_id
      t.date     :appointment_date
      t.string   :employment_id
      t.string   :registered_no
      t.string   :rank
      t.string   :sssnit_no
      t.boolean :is_active, null:false, default: true
      t.boolean :portal_access, null:false, default: false
      t.integer :user_id
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
  end

    def down
      drop_table :staffs
    end

end
