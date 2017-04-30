json.extract! staff, :id, :title, :first_name, :middle_name, :last_name, :gender, :date_of_birth, :religious_denomination, :image, :disability, :disability_desc, :date_join, :appointment_date, :sssnit_no, :rank, :registered_no, :employee_id, :staff_category_id, :staff_department_id, :user_id, :is_active, :created_at, :updated_at
json.url staff_url(staff, format: :json)
