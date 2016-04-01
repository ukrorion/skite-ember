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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150520223139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "region",           limit: 100
    t.string   "city",             limit: 100
    t.string   "street",           limit: 100
    t.string   "house_number",     limit: 20
    t.string   "apartment_number", limit: 20
    t.string   "postal_code",      limit: 20
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "counters", force: :cascade do |t|
    t.integer  "address_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "counters", ["address_id"], name: "index_counters_on_address_id", using: :btree
  add_index "counters", ["product_id"], name: "index_counters_on_product_id", using: :btree

  create_table "prices", force: :cascade do |t|
    t.float   "value"
    t.date    "end_date"
    t.integer "product_id"
  end

  add_index "prices", ["product_id"], name: "index_prices_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.boolean  "editable"
    t.integer  "provider_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["provider_id"], name: "index_products_on_provider_id", using: :btree
  add_index "products", ["service_id"], name: "index_products_on_service_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.integer  "bank_account"
    t.integer  "checking_account"
    t.integer  "user_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "providers", ["address_id"], name: "index_providers_on_address_id", using: :btree
  add_index "providers", ["user_id"], name: "index_providers_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.integer  "priority"
    t.boolean  "active"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  add_index "roles_users", ["role_id"], name: "index_roles_users_on_role_id", using: :btree
  add_index "roles_users", ["user_id"], name: "index_roles_users_on_user_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender",                 limit: 10
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
