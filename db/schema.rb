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

ActiveRecord::Schema.define(version: 2020_03_02_171846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listplaces", force: :cascade do |t|
    t.bigint "list_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_listplaces_on_list_id"
    t.index ["place_id"], name: "index_listplaces_on_place_id"
  end

  create_table "lists", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_lists_on_city_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.integer "average_rating"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "city_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_places_on_category_id"
    t.index ["city_id"], name: "index_places_on_city_id"
  end

  create_table "tips", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.bigint "user_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_tips_on_place_id"
    t.index ["user_id"], name: "index_tips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "listplaces", "lists"
  add_foreign_key "listplaces", "places"
  add_foreign_key "lists", "cities"
  add_foreign_key "lists", "users"
  add_foreign_key "places", "categories"
  add_foreign_key "places", "cities"
  add_foreign_key "tips", "places"
  add_foreign_key "tips", "users"
end
