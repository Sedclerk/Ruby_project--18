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

ActiveRecord::Schema.define(version: 20131202065446) do

  create_table "messages", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.integer  "phone"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visit_stats", force: true do |t|
    t.integer  "visit_id"
    t.string   "ip_address",    limit: 15
    t.integer  "num_of_visits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visit_stats", ["ip_address"], name: "index_visit_stats_on_ip_address", using: :btree
  add_index "visit_stats", ["num_of_visits"], name: "index_visit_stats_on_num_of_visits", using: :btree
  add_index "visit_stats", ["visit_id"], name: "index_visit_stats_on_visit_id", using: :btree

  create_table "visits", force: true do |t|
    t.string   "ip_address", limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "processed"
  end

  add_index "visits", ["ip_address"], name: "index_visits_on_ip_address", using: :btree

end
