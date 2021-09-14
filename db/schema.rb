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

ActiveRecord::Schema.define(version: 2021_09_14_171020) do

  create_table "invitations", force: :cascade do |t|
    t.float "cost"
    t.boolean "attendance"
    t.integer "user_id"
    t.integer "meeting_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meeting_id"], name: "index_invitations_on_meeting_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title", default: "New Meeting"
    t.integer "minutes_duration", default: 30
    t.datetime "start_time", default: "2021-09-14 17:14:40", null: false
    t.float "cost", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", default: "New User", null: false
    t.float "rate", default: 15.0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "invitations", "meetings"
  add_foreign_key "invitations", "users"
end
