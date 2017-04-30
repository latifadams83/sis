# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170426172753) do

  create_table "staff_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "location"
    t.string   "town"
    t.string   "region"
    t.string   "email"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "postal_code"
    t.integer  "staff_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["staff_id"], name: "index_staff_contacts_on_staff_id", using: :btree
  end

  create_table "staff_departments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "staff_category_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["staff_category_id"], name: "index_staff_departments_on_staff_category_id", using: :btree
  end

  create_table "staff_qualifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "type"
    t.string   "name"
    t.string   "description"
    t.date     "date_earned"
    t.integer  "staff_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["staff_id"], name: "index_staff_qualifications_on_staff_id", using: :btree
  end

  create_table "staffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "religious_denomination"
    t.string   "image"
    t.boolean  "disability"
    t.string   "disability_desc"
    t.date     "date_join"
    t.integer  "staff_category_id"
    t.integer  "staff_department_id"
    t.date     "appointment_date"
    t.string   "employment_id"
    t.string   "registered_no"
    t.string   "rank"
    t.string   "sssnit_no"
    t.boolean  "is_active",              default: true,  null: false
    t.boolean  "portal_access",          default: false, null: false
    t.integer  "user_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "staff_departments", "staff_categories"
end
