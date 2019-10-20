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

ActiveRecord::Schema.define(version: 2019_10_20_024712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "journeys", force: :cascade do |t|
    t.bigint "room_id"
    t.integer "buyer_id"
    t.date "viewing_date"
    t.time "viewing_time"
    t.boolean "first_meeting_requested"
    t.boolean "first_meeting_approved"
    t.date "first_meeting_date"
    t.time "first_meeting_time"
    t.boolean "second_meeting_requested"
    t.boolean "second_meeting_approved"
    t.date "second_meeting_date"
    t.time "second_meeting_time"
    t.integer "offer_price"
    t.boolean "offer_accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_journeys_on_room_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "address"
    t.string "type"
    t.integer "bathrooms"
    t.integer "sq_feet"
    t.string "description"
    t.string "photo"
    t.integer "property_manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "user_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_reviews_on_property_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "price"
    t.boolean "for_sale"
    t.string "photo"
    t.string "description"
    t.bigint "property_id"
    t.integer "owner_id"
    t.integer "tenant_id"
    t.integer "agent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_rooms_on_property_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.string "facebook"
    t.string "instagram"
    t.string "interests"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "journeys", "rooms"
  add_foreign_key "reviews", "properties"
  add_foreign_key "reviews", "users"
  add_foreign_key "rooms", "properties"
end
