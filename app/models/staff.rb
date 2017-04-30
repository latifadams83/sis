class Staff < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :staff_category
  belongs_to :staff_department
  belongs_to :user
  has_many :staff_contacs
  has_many :staff_qualifications

  validates_presence_of :first_name, :last_name, :gender, :date_join, :staff_category_id, :staff_department_id
end
