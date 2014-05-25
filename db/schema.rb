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

ActiveRecord::Schema.define(version: 20140525020122) do

  create_table "clubs", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "website"
  end

  add_index "clubs", ["confirmation_token"], name: "index_clubs_on_confirmation_token", unique: true
  add_index "clubs", ["email"], name: "index_clubs_on_email", unique: true
  add_index "clubs", ["reset_password_token"], name: "index_clubs_on_reset_password_token", unique: true

  create_table "clubs_students", id: false, force: true do |t|
    t.integer "student_id", null: false
    t.integer "club_id",    null: false
  end

  create_table "comments", force: true do |t|
    t.string   "content"
    t.integer  "student_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["event_id"], name: "index_comments_on_event_id"
  add_index "comments", ["student_id"], name: "index_comments_on_student_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "when"
    t.integer  "maxTickets"
    t.integer  "ticketPrice"
    t.integer  "memberDiscount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "club_id"
    t.string   "location"
    t.integer  "tickets_allocated", default: 0
  end

  add_index "events", ["club_id"], name: "index_events_on_club_id"

  create_table "events_students", id: false, force: true do |t|
    t.integer "student_id", null: false
    t.integer "event_id",   null: false
  end

  create_table "students", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
