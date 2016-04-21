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

ActiveRecord::Schema.define(version: 20160403191123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["name"], name: "index_accounts_on_name", unique: true, using: :btree

  create_table "sms_messages", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.string   "from_number"
    t.string   "to_number"
    t.text     "body"
    t.boolean  "outbound",    default: false, null: false
    t.boolean  "unread",      default: true,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sms_messages", ["account_id"], name: "index_sms_messages_on_account_id", using: :btree
  add_index "sms_messages", ["created_at"], name: "index_sms_messages_on_created_at", using: :btree
  add_index "sms_messages", ["from_number"], name: "index_sms_messages_on_from_number", using: :btree
  add_index "sms_messages", ["to_number"], name: "index_sms_messages_on_to_number", using: :btree
  add_index "sms_messages", ["user_id"], name: "index_sms_messages_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "email"
    t.string   "name"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["time_zone"], name: "index_users_on_time_zone", using: :btree

end
