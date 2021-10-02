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

ActiveRecord::Schema.define(version: 2021_10_02_001846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "announcements", force: :cascade do |t|
    t.datetime "published_at"
    t.string "announcement_type"
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "recipient_type", null: false
    t.bigint "recipient_id", null: false
    t.string "type", null: false
    t.jsonb "params"
    t.datetime "read_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["read_at"], name: "index_notifications_on_read_at"
    t.index ["recipient_type", "recipient_id"], name: "index_notifications_on_recipient"
  end

  create_table "services", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "provider"
    t.string "uid"
    t.string "access_token"
    t.string "access_token_secret"
    t.string "refresh_token"
    t.datetime "expires_at"
    t.text "auth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "touring_plans_dinings", force: :cascade do |t|
    t.text "permalink"
    t.string "name"
    t.string "wdw_uri"
    t.text "address"
    t.string "city"
    t.string "state_code"
    t.string "zip_code"
    t.string "phone_number"
    t.string "url"
    t.boolean "off_site"
    t.boolean "water_sports"
    t.boolean "marina"
    t.boolean "beach"
    t.boolean "tennis"
    t.boolean "biking"
    t.boolean "suites"
    t.boolean "concierge_floor"
    t.boolean "room_service"
    t.boolean "wired_internet"
    t.boolean "wireless_internet"
    t.integer "num_rooms"
    t.string "cost_range"
    t.string "shuttle_to_parks"
    t.string "cost_estimate"
    t.string "lodging_area_code"
    t.string "category_code"
    t.string "theme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "touring_plans_hotels", force: :cascade do |t|
    t.text "permalink"
    t.string "name"
    t.string "wdw_uri"
    t.text "address"
    t.string "city"
    t.string "state_code"
    t.string "zip_code"
    t.string "phone_number"
    t.string "url"
    t.boolean "off_site"
    t.boolean "water_sports"
    t.boolean "marina"
    t.boolean "beach"
    t.boolean "tennis"
    t.boolean "biking"
    t.boolean "suites"
    t.boolean "concierge_floor"
    t.boolean "room_service"
    t.boolean "wired_internet"
    t.boolean "wireless_internet"
    t.integer "num_rooms"
    t.string "cost_range"
    t.string "shuttle_to_parks"
    t.string "cost_estimate"
    t.string "lodging_area_code"
    t.string "category_code"
    t.string "theme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "touringplans_cached_venues", force: :cascade do |t|
    t.string "name"
    t.boolean "fastpass_booth"
    t.string "short_name"
    t.boolean "open_emh_morning"
    t.boolean "open_emh_evening"
    t.boolean "single_rider"
    t.string "time_zone"
    t.boolean "seasonal"
    t.boolean "open_very_merry"
    t.boolean "open_not_so_scary"
    t.string "category_code"
    t.decimal "duration"
    t.string "scheduled_code"
    t.string "what_it_is"
    t.string "scope_and_scale_code"
    t.string "when_to_go"
    t.string "average_wait_per_hundred"
    t.string "average_wait_assumes"
    t.string "loading_speed"
    t.string "probable_wait_time"
    t.string "special_needs"
    t.string "height_restriction"
    t.boolean "intense"
    t.datetime "extinct_on"
    t.datetime "opened_on"
    t.boolean "frightening"
    t.boolean "physical_considerations"
    t.boolean "handheld_captioning"
    t.boolean "video_captioning"
    t.boolean "reflective_captioning"
    t.boolean "assistive_listening"
    t.boolean "audio_description"
    t.string "wheelchair_transfer_code"
    t.boolean "no_service_animals"
    t.boolean "sign_language"
    t.boolean "service_animal_check"
    t.boolean "not_to_be_missed"
    t.boolean "rider_swap"
    t.string "ultimate_code"
    t.string "ultimate_task"
    t.string "park_entrance"
    t.string "relative_open"
    t.string "relative_close"
    t.boolean "close_at_dusk"
    t.boolean "fastpass_available"
    t.integer "crowd_calendar_version"
    t.string "match_name"
    t.integer "crazy_threshold"
    t.boolean "fastpass_only"
    t.boolean "allow_showtimes_after_close"
    t.boolean "disconnected_fastpass_booth"
    t.integer "crowd_calendar_group"
    t.string "arrive_before"
    t.string "arrive_before_fp"
    t.boolean "opens_at_sunset"
    t.boolean "closes_at_sunset"
    t.string "permalink"
    t.boolean "allow_time_restriction"
    t.boolean "relative_open_to_sunset"
    t.boolean "relative_close_to_sunset"
    t.integer "closing_round_code"
    t.integer "walking_time_proxy_id"
    t.boolean "flexible_duration"
    t.integer "operator_id"
    t.string "operator_type"
    t.integer "showtime_proxy_id"
    t.boolean "hide_app"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.datetime "announcements_last_read_at"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "services", "users"
end
