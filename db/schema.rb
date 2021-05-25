# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_25_071022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "project"
    t.string "member"
    t.string "started"
    t.string "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "task"
  end

  create_table "estimates", force: :cascade do |t|
    t.string "bill"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "quantity"
    t.string "rate"
    t.string "total"
    t.string "bill_number"
    t.string "date"
    t.string "sn"
    t.string "subject"
    t.string "sub_total"
    t.string "tax"
    t.string "tax_amount"
    t.string "grand_total"
    t.string "client_name"
    t.string "office_name"
    t.string "client_address"
    t.string "client_phone"
    t.string "client_designation"
    t.string "admin_name"
    t.string "vat_no"
    t.string "payment_type"
  end

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotations", force: :cascade do |t|
    t.string "bill"
    t.string "description"
    t.string "quantity"
    t.string "rate"
    t.string "total"
    t.string "bill_number"
    t.string "date"
    t.string "sn"
    t.string "subject"
    t.string "sub_total"
    t.string "tax"
    t.string "tax_amount"
    t.string "grand_total"
    t.string "client_name"
    t.string "office_name"
    t.string "client_address"
    t.string "client_phone"
    t.string "client_designation"
    t.string "admin_name"
    t.string "vat_no"
    t.string "payment_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
