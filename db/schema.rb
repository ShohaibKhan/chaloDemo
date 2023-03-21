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

ActiveRecord::Schema[7.0].define(version: 2023_03_20_162519) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_brands_on_brand_id", unique: true
  end

  create_table "cars", force: :cascade do |t|
    t.string "car_name"
    t.boolean "launched"
    t.datetime "launch_date"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "brand_id", null: false
    t.index ["brand_id"], name: "index_cars_on_brand_id"
    t.index ["car_id"], name: "index_cars_on_car_id", unique: true
  end

  create_table "metadata", force: :cascade do |t|
    t.datetime "waiting_period"
    t.bigint "car_id"
    t.bigint "variant_id"
    t.bigint "pincode_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_metadata_on_car_id"
    t.index ["pincode_id"], name: "index_metadata_on_pincode_id"
    t.index ["variant_id"], name: "index_metadata_on_variant_id"
  end

  create_table "pincodes", force: :cascade do |t|
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "fname"
    t.string "lname"
    t.string "phno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.string "variant"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_variants_on_car_id"
  end

  add_foreign_key "cars", "brands"
  add_foreign_key "metadata", "cars"
  add_foreign_key "metadata", "pincodes"
  add_foreign_key "metadata", "variants"
  add_foreign_key "variants", "cars"
end
