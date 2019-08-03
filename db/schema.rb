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

ActiveRecord::Schema.define(version: 20190802182347) do

  create_table "guesses", force: :cascade do |t|
    t.string "program"
    t.string "previous_job"
    t.string "previous_city"
    t.string "hometown"
    t.string "internship"
    t.string "undergrad"
    t.string "name"
    t.string "add_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "partner"
  end

  create_table "kwestees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "phonenumber"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_kwestees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_kwestees_on_reset_password_token", unique: true
  end

  create_table "meal_groups", force: :cascade do |t|
    t.integer "meal_id"
    t.integer "kwestee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "restaurant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_assignments", force: :cascade do |t|
    t.integer "room_id"
    t.integer "kwestee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "hotel"
    t.integer "room_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
