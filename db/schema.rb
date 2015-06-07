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

ActiveRecord::Schema.define(version: 20150607221148) do

  create_table "accomodations", force: :cascade do |t|
    t.string   "room_nos",        limit: 255
    t.string   "validity_period", limit: 255
    t.boolean  "has_occupant",    limit: 1
    t.integer  "student_id",      limit: 4
    t.integer  "hostel_id",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accomodations", ["hostel_id"], name: "index_accomodations_on_hostel_id", using: :btree
  add_index "accomodations", ["student_id"], name: "index_accomodations_on_student_id", using: :btree

  create_table "administrators", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "password",        limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "adminstrators", force: :cascade do |t|
    t.string   "employee_id", limit: 255
    t.string   "lastname",    limit: 255
    t.string   "firstname",   limit: 255
    t.string   "email",       limit: 255
    t.integer  "auth_level",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostels", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.integer  "room_count",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string   "lastname",   limit: 255
    t.string   "firstname",  limit: 255
    t.string   "matric_nos", limit: 255
    t.string   "department", limit: 255
    t.string   "level",      limit: 255
    t.string   "email",      limit: 255
    t.string   "phonenos",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
