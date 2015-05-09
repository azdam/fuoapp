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

ActiveRecord::Schema.define(version: 20150509130240) do

  create_table "accomodations", force: true do |t|
    t.string   "room_nos"
    t.string   "validity_period"
    t.boolean  "has_occupant"
    t.integer  "student_id"
    t.integer  "hostel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accomodations", ["hostel_id"], name: "index_accomodations_on_hostel_id", using: :btree
  add_index "accomodations", ["student_id"], name: "index_accomodations_on_student_id", using: :btree

  create_table "adminstrators", force: true do |t|
    t.string   "employee_id"
    t.string   "lastname"
    t.string   "firstname"
    t.string   "email"
    t.integer  "auth_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostels", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "room_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "matric_nos"
    t.string   "department"
    t.string   "level"
    t.string   "email"
    t.string   "phonenos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
