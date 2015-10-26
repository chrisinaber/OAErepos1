# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20151021142314) do

  create_table "budgets", :force => true do |t|
    t.string   "budgettype_id"
    t.string   "budgettype_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "categoryofequipments", :force => true do |t|
    t.string   "eqmclass_id"
    t.string   "eqmcategory_id"
    t.string   "eqmcategory_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "classofequipments", :force => true do |t|
    t.string   "eqmclass_id"
    t.string   "eqmclass_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "delivery_details", :force => true do |t|
    t.string   "delivery_no",    :null => false
    t.string   "division_id",    :null => false
    t.string   "emptype_id",     :null => false
    t.integer  "emptype_amount", :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "delivery_details", ["delivery_no"], :name => "index_delivery_details_on_delivery_no"

  create_table "divisions", :force => true do |t|
    t.string   "division_id"
    t.string   "division_name"
    t.string   "div_short_name"
    t.string   "div_location"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "equipment_details", :id => false, :force => true do |t|
    t.string   "kurupan_no",       :null => false
    t.string   "eqmtype_id",       :null => false
    t.string   "running_no",       :null => false
    t.string   "project_id",       :null => false
    t.float    "quaintity_emp",    :null => false
    t.string   "status_detail"
    t.float    "ict_price"
    t.float    "bidding_price"
    t.integer  "vendor_id"
    t.string   "receipt_no"
    t.string   "emp_brand"
    t.string   "emp_version"
    t.string   "spec_cpu"
    t.string   "spec_hd"
    t.string   "spec_ram"
    t.string   "mornitor_brand"
    t.string   "mornitor_version"
    t.string   "mornitor_sn1"
    t.string   "mornitor_sn2"
    t.string   "eqm_sn1"
    t.string   "eqm_sn2"
    t.string   "eqm_sn3"
    t.string   "eqm_sn4"
    t.string   "user_name"
    t.string   "delivery_no"
    t.string   "record_person"
    t.date     "record_date"
    t.string   "remakes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "equipment_details", ["kurupan_no"], :name => "index_equipment_details_on_kurupan_no"

  create_table "fix_upgrades", :force => true do |t|
    t.string   "kurupan_no"
    t.date     "dateof_work"
    t.string   "detail_fix_upgrade"
    t.float    "payment"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "fixes", :force => true do |t|
    t.string   "kurupan_no"
    t.string   "dateof_fix"
    t.string   "detailof_fix"
    t.string   "paymentof_fix"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "project_details", :id => false, :force => true do |t|
    t.string   "project_id",    :null => false
    t.string   "project_name",  :null => false
    t.integer  "project_year",  :null => false
    t.string   "budgettype_id"
    t.string   "vendor_id"
    t.string   "contract_id"
    t.date     "contract_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "project_details", ["project_id"], :name => "index_project_details_on_project_id"

  create_table "receipt_details", :force => true do |t|
    t.string   "receipt_detail_id"
    t.string   "eqmtype_id"
    t.string   "eqmtype_amount"
    t.string   "eqmtype_priceunit"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "receipts", :force => true do |t|
    t.string   "receipt_no"
    t.string   "receipt_date"
    t.string   "receipt_sendor"
    t.string   "receipt_receiver"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "sections", :force => true do |t|
    t.string   "division_id"
    t.string   "section_id"
    t.string   "section_name"
    t.string   "section_location"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "typeofequipments", :force => true do |t|
    t.string   "eqmcategory_id"
    t.string   "eqmtype_id"
    t.string   "eqmtype_name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "upgrades", :force => true do |t|
    t.string   "kurupan_no"
    t.string   "dateof_upgrade"
    t.string   "detailof_upgrade"
    t.string   "paymentof_upgrade"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "user_details", :force => true do |t|
    t.string   "login"
    t.string   "salt"
    t.string   "crypted_password"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "surname"
    t.string   "firstname"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vendor_details", :id => false, :force => true do |t|
    t.string   "vendor_id"
    t.string   "vendor_name"
    t.string   "vendor_address"
    t.string   "vendor_telephone"
    t.string   "vendor_email"
    t.string   "vendor_comment"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "vendor_details", ["vendor_id"], :name => "index_vendor_details_on_vendor_id"

end
