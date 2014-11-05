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

ActiveRecord::Schema.define(version: 20141105090843) do

  create_table "events", force: true do |t|
    t.string   "type"
    t.date     "date"
    t.time     "time"
    t.string   "opponent"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_positions", force: true do |t|
    t.integer  "team_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position_id"
  end

  add_index "player_positions", ["position_id", "team_member_id"], name: "index_player_positions_on_position_id_and_team_member_id", unique: true

  create_table "positions", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statistics", force: true do |t|
    t.integer  "goals"
    t.integer  "assists"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_member_availabilities", force: true do |t|
    t.integer  "team_member_id"
    t.boolean  "isAvailable"
    t.date     "date"
    t.time     "from_time"
    t.time     "till_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_members", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.integer  "user_id"
    t.boolean  "is_coach"
    t.string   "member_first_name"
    t.string   "member_last_name"
  end

  add_index "team_members", ["team_id", "user_id"], name: "index_team_members_on_team_id_and_user_id", unique: true

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "mascot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "user_type"
    t.string   "password"
    t.string   "phone_number"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
  end

end
