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

ActiveRecord::Schema.define(version: 20131016071918) do

  create_table "message", force: true do |t|
    t.integer  "message_id"
    t.string   "message_type",  limit: 30
    t.integer  "total_visits"
    t.integer  "unique_visits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visit_details", force: true do |t|
    t.integer  "visit_id"
    t.string   "ip_address", limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visit_details", ["ip_address"], name: "index_visit_details_on_ip_address", using: :btree
  add_index "visit_details", ["visit_id"], name: "index_visit_details_on_visit_id", using: :btree

  create_table "visits", force: true do |t|
    t.integer  "visitable_id"
    t.string   "visitable_type", limit: 30
    t.integer  "total_visits"
    t.integer  "unique_visits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["visitable_id"], name: "index_visits_on_visitable_id", using: :btree
  add_index "visits", ["visitable_type"], name: "index_visits_on_visitable_type", using: :btree

end
