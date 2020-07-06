# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_06_142016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "magnet_profiles", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "magnet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["magnet_id"], name: "index_magnet_profiles_on_magnet_id"
    t.index ["profile_id"], name: "index_magnet_profiles_on_profile_id"
  end

  create_table "magnets", force: :cascade do |t|
    t.string "token"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string "username"
    t.bigint "social_id", null: false
    t.bigint "profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "ative", default: true
    t.boolean "priority", default: false
    t.index ["profile_id"], name: "index_networks_on_profile_id"
    t.index ["social_id"], name: "index_networks_on_social_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "name"
    t.string "url_desktop_begin"
    t.string "url_mobile_begin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "magnet_profiles", "magnets"
  add_foreign_key "magnet_profiles", "profiles"
  add_foreign_key "networks", "profiles"
  add_foreign_key "networks", "socials"
  add_foreign_key "profiles", "users"
end
