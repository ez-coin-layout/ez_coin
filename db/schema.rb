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

ActiveRecord::Schema.define(version: 20160728073518) do

  create_table "admin_deposit_records", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.integer  "deposit_request_id", limit: 4
    t.integer  "deposit_method",     limit: 4
    t.integer  "amount",             limit: 4
    t.integer  "add_point",          limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "admin_managers", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "password_digest", limit: 255
    t.string   "authority",       limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "default_coin_records", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "change_point", limit: 4
    t.integer  "coin_type",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "default_deposit_requests", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "amount",        limit: 4
    t.integer  "status",        limit: 4
    t.integer  "request_point", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "default_users", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "ezid",            limit: 255
    t.string   "password_digest", limit: 255
    t.integer  "total_point",     limit: 4
    t.string   "via_site",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "default_users", ["email", "ezid"], name: "index_default_users_on_email_and_ezid", unique: true, using: :btree

end
