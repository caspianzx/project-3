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

ActiveRecord::Schema.define(version: 2019_08_21_064116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.text "name"
    t.text "phone"
    t.text "email"
    t.date "date"
    t.bigint "service_id"
    t.bigint "timeslot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_appointments_on_service_id"
    t.index ["timeslot_id"], name: "index_appointments_on_timeslot_id"
  end

  create_table "details", force: :cascade do |t|
    t.text "name"
    t.text "phone"
    t.text "address"
    t.text "area"
    t.text "website"
    t.text "logo_url"
    t.bigint "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_details_on_salon_id"
  end

  create_table "photos", force: :cascade do |t|
    t.text "photo_url"
    t.bigint "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_photos_on_salon_id"
  end

  create_table "salons", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_salons_on_email", unique: true
    t.index ["reset_password_token"], name: "index_salons_on_reset_password_token", unique: true
  end

  create_table "services", force: :cascade do |t|
    t.text "name"
    t.integer "price"
    t.bigint "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_services_on_salon_id"
  end

  create_table "timeslots", force: :cascade do |t|
    t.text "time"
    t.bigint "salon_id"
    t.index ["salon_id"], name: "index_timeslots_on_salon_id"
  end

end