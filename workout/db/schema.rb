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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111122065332) do

  create_table "days", :force => true do |t|
    t.integer  "plan_id"
    t.date     "date"
    t.string   "name"
    t.float    "duration"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", :force => true do |t|
    t.string   "muscle"
    t.integer  "duration"
    t.string   "name"
    t.string   "reps"
    t.string   "url"
    t.text     "description"
    t.integer  "day_id"
    t.integer  "gym"
    t.boolean  "core"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "gym"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weeks", :force => true do |t|
    t.integer  "user_id"
    t.float    "monday"
    t.float    "tuesday"
    t.float    "wednesday"
    t.float    "thursday"
    t.float    "friday"
    t.float    "saturday"
    t.float    "sunday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workout_types", :force => true do |t|
    t.integer  "plan_id"
    t.string   "name"
    t.integer  "priority"
    t.integer  "min_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
