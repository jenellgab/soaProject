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

ActiveRecord::Schema.define(version: 20150325085556) do

  create_table "creature_locations", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "creature_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "creatures", force: :cascade do |t|
    t.string   "name"
    t.string   "element_type"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "gps_coordinate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string   "name"
    t.integer  "max_number"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trades", force: :cascade do |t|
    t.integer  "user_id_a"
    t.integer  "user_id_b"
    t.integer  "creature_a"
    t.integer  "creature_b"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_creature_moves", force: :cascade do |t|
    t.integer  "user_creature_id"
    t.integer  "move_id"
    t.integer  "max_number"
    t.integer  "experience_points"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "user_creatures", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "creature_id"
    t.string   "nickname"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "hp"
  end

  create_table "usercreaturemoves", force: :cascade do |t|
    t.integer  "user_creature_id"
    t.integer  "move_id"
    t.integer  "max_number"
    t.integer  "experience_points"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "handle"
    t.string   "mobile_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
