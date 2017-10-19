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

ActiveRecord::Schema.define(version: 20171018230309) do

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "team"
    t.string   "position"
    t.integer  "attempts"
    t.integer  "yards"
    t.integer  "games"
    t.integer  "touchdowns"
    t.integer  "longest_rush"
    t.integer  "first_touchdown_rushes"
    t.integer  "twenties_yards_more_rushes"
    t.integer  "forties_yards_more_rushes"
    t.integer  "rushing_fumbles"
    t.boolean  "longest_touchdown"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "players", ["longest_rush"], name: "index_players_on_longest_rush"
  add_index "players", ["name"], name: "index_players_on_name"
  add_index "players", ["touchdowns"], name: "index_players_on_touchdowns"
  add_index "players", ["yards"], name: "index_players_on_yards"

end
