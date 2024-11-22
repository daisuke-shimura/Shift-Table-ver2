# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_11_22_014217) do

  create_table "days", force: :cascade do |t|
    t.date "start", null: false
    t.date "finish", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "limit", default: 0
    t.boolean "limityan", default: false
  end

  create_table "events", force: :cascade do |t|
    t.string "time1", default: ""
    t.string "time2", default: ""
    t.string "time3", default: ""
    t.string "time4", default: ""
    t.string "time5", default: ""
    t.string "time6", default: ""
    t.string "time7", default: ""
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fris", force: :cascade do |t|
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "job_comments", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id"
    t.integer "job_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "day_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "time1", default: ""
    t.string "time2", default: ""
    t.string "time3", default: ""
    t.string "time4", default: ""
    t.string "time5", default: ""
    t.string "time6", default: ""
    t.string "time7", default: ""
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "day_id"
  end

  create_table "mons", force: :cascade do |t|
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sats", force: :cascade do |t|
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thus", force: :cascade do |t|
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tues", force: :cascade do |t|
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weds", force: :cascade do |t|
    t.integer "day_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
