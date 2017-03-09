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

ActiveRecord::Schema.define(version: 20170222000544) do

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.integer  "year_of_publication"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.decimal  "price"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "established"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id"

  create_table "students", force: :cascade do |t|
    t.string  "sname"
    t.integer "roll_no"
    t.string  "sgrade"
  end

  add_index "students", ["roll_no"], name: "index_students_on_roll_no"

end
