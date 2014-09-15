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

ActiveRecord::Schema.define(version: 20140910024801) do

  create_table "formats", force: true do |t|
    t.string "name"
  end

  create_table "regressions", force: true do |t|
    t.string   "description"
    t.integer  "test_set_id"
    t.integer  "test_items_count"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_items", force: true do |t|
    t.string   "vectorname"
    t.string   "status",        default: "not test"
    t.string   "description"
    t.integer  "frame_number"
    t.integer  "vector_id"
    t.integer  "format_id"
    t.integer  "regression_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_items", ["vectorname"], name: "index_test_items_on_vectorname"

  create_table "test_sets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.boolean "admin",           default: false
    t.string  "password_digest"
  end

end
