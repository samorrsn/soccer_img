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

ActiveRecord::Schema.define(version: 20141209214508) do

  create_table "events", force: true do |t|
    t.string   "title"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.boolean  "all_day"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.string   "event_type"
  end

  add_index "events", ["team_id"], name: "index_events_on_team_id"

  create_table "notes", force: true do |t|
    t.integer  "team_player_id"
    t.integer  "team_coach_id"
    t.text     "note_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["team_player_id"], name: "index_notes_on_team_player_id"

  create_table "player_positions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position_id"
    t.integer  "team_player_id"
  end

  add_index "player_positions", ["position_id", "team_player_id"], name: "index_player_positions_on_position_id_and_team_player_id", unique: true

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
    t.integer  "team_player_id"
  end

  add_index "statistics", ["team_player_id"], name: "index_statistics_on_team_player_id"

  create_table "team_images", force: true do |t|
    t.integer  "team_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_images", ["team_id"], name: "index_team_images_on_team_id"

  create_table "team_member_availabilities", force: true do |t|
    t.integer  "team_member_id"
    t.boolean  "isAvailable"
    t.datetime "from"
    t.datetime "till"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_player_id"
  end

  add_index "team_member_availabilities", ["team_player_id"], name: "index_team_member_availabilities_on_team_player_id"

  create_table "team_member_private_messages", force: true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.text     "subject"
    t.text     "body"
    t.boolean  "is_read"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_members", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.integer  "user_id"
    t.string   "member_first_name"
    t.string   "member_last_name"
    t.string   "type"
  end

  add_index "team_members", ["team_id", "user_id"], name: "index_team_members_on_team_id_and_user_id", unique: true

  create_table "team_positions", force: true do |t|
    t.integer  "team_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_positions", ["team_id", "position_id"], name: "index_team_positions_on_team_id_and_position_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "mascot"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "positions",  default: "---\n- Goalkeeper\n- Forward\n- Defender\n- Benchwarmer\n"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "user_type",       default: "member"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
