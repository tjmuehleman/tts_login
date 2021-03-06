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

ActiveRecord::Schema.define(version: 20140218142219) do

  create_table "blog_comments", force: true do |t|
    t.text     "entry_text"
    t.integer  "user_id"
    t.integer  "blog_entry_id"
    t.date     "entry_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_entries", force: true do |t|
    t.integer  "user_id"
    t.integer  "blog_id"
    t.text     "entry"
    t.string   "subject"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.text     "entry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "num_entries"
  end

  create_table "projects", force: true do |t|
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "project_name"
    t.text     "summary"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.text     "bio"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

end
