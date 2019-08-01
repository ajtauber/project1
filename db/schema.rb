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

ActiveRecord::Schema.define(version: 2019_08_01_021045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "email"
    t.string "password_digest"
    t.boolean "admin", default: false
  end

  create_table "customers_instructors", id: false, force: :cascade do |t|
    t.integer "customer_id"
    t.integer "instructor_id"
  end

  create_table "customers_resorts", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "resort_id"
  end

  create_table "customers_tickets", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "ticket_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.text "instructor_name"
    t.float "salary"
    t.text "resort_name"
    t.integer "level"
    t.integer "resort_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors_resorts", force: :cascade do |t|
    t.integer "instructor_id"
    t.integer "resort_id"
  end

  create_table "instructors_tickets", id: false, force: :cascade do |t|
    t.integer "instructor_id"
    t.integer "ticket_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.text "name"
    t.integer "height"
    t.integer "lifts"
    t.text "location"
    t.integer "runs"
    t.text "image"
    t.integer "customer_id"
    t.integer "instructor_id"
    t.integer "restaurant_id"
    t.integer "rental_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.float "price"
    t.date "expiry_date"
    t.date "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "customer_name"
    t.integer "resort_id"
  end

end
