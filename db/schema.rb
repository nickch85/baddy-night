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

ActiveRecord::Schema.define(version: 20150506113020) do

  create_table "event_players", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "player_id"
    t.datetime "arrived_at"
    t.datetime "left_at"
  end

  add_index "event_players", ["event_id"], name: "index_event_players_on_event_id"
  add_index "event_players", ["player_id"], name: "index_event_players_on_player_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rank"
    t.string   "colour"
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "email"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "postal_code"
    t.string   "country_code"
    t.integer  "grade_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "gender"
    t.string   "membership_type"
  end

end
