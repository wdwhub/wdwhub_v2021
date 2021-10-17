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

ActiveRecord::Schema.define(version: 2021_10_17_224429) do

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

  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "permalink"
    t.string "short_name"
    t.string "venue_permalink"
  end

  create_table "cached_touringplans_attractions", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "venue_permalink"
    t.boolean "fastpass_booth"
    t.boolean "open_emh_morning"
    t.boolean "single_rider"
    t.string "time_zone"
    t.boolean "seasonal"
    t.boolean "open_very_merry"
    t.boolean "open_not_so_scary"
    t.string "category_code"
    t.string "scheduled_code"
    t.float "duration"
    t.string "what_it_is"
    t.string "scope_and_scale_code"
    t.string "when_to_go"
    t.float "average_wait_per_hundred"
    t.string "average_wait_assumes"
    t.string "loading_speed"
    t.string "probable_wait_time"
    t.string "special_needs"
    t.integer "height_restriction"
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
    t.boolean "park_entrance"
    t.string "ultimate_code"
    t.string "ultimate_task"
    t.boolean "close_at_dusk"
    t.integer "crowd_calendar_version"
    t.boolean "match_name"
    t.boolean "crazy_threshold"
    t.boolean "fastpass_only"
    t.boolean "allow_showtimes_after_close"
    t.boolean "disconnected_fastpass_booth"
    t.integer "arrive_before"
    t.integer "arrive_before_fp"
    t.boolean "allow_time_restriction"
    t.integer "relative_open_to_sunset"
    t.integer "relative_close_to_sunset"
    t.string "closing_round_code"
    t.integer "walking_time_proxy_id"
    t.integer "operator_id"
    t.string "operator_type"
    t.boolean "hide_app"
    t.integer "showtime_proxy_id"
    t.string "sort_name"
    t.boolean "extinct_on_uncertain"
    t.boolean "opened_on_uncertain"
    t.boolean "ignore_scrapes"
    t.boolean "extra_cost"
    t.boolean "climate_controlled"
    t.boolean "wet"
    t.text "operational_notes"
    t.string "latitude"
    t.string "longitude"
    t.boolean "open_early"
    t.string "themeparks_entity_id"
    t.boolean "has_virtual_queue"
    t.boolean "open_emh_evening"
  end

  create_table "cached_touringplans_dining_venues", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "venue_permalink"
    t.integer "land_id"
    t.string "category_code"
    t.string "portion_size"
    t.string "cost_code"
    t.string "cuisine"
    t.string "phone_number"
    t.string "entree_range"
    t.string "when_to_go"
    t.string "parking"
    t.string "bar"
    t.string "wine_list"
    t.string "dress"
    t.string "awards"
    t.string "lunch_hours"
    t.string "dinner_hours"
    t.string "selection"
    t.string "setting_atmosphere"
    t.string "other_recommendations"
    t.string "summary"
    t.string "house_specialties"
    t.string "counter_quality_rating"
    t.string "counter_value_rating"
    t.string "table_quality_rating"
    t.string "table_value_rating"
    t.string "overall_rating"
    t.string "service_rating"
    t.string "friendliness_rating"
    t.string "adult_breakfast_menu_url"
    t.string "adult_lunch_menu_url"
    t.string "adult_dinner_menu_url"
    t.string "child_breakfast_menu_url"
    t.string "child_lunch_menu_url"
    t.string "child_dinner_menu_url"
    t.boolean "requires_credit_card"
    t.boolean "requires_pre_payment"
    t.integer "plan_x_coord"
    t.integer "plan_y_coord"
    t.integer "old_park_id"
    t.integer "old_attraction_id"
    t.string "plan_name"
    t.datetime "extinct_on"
    t.datetime "opened_on"
    t.string "disney_permalink"
    t.string "code"
    t.boolean "accepts_reservations"
    t.boolean "kosher_available"
    t.integer "dinable_id"
    t.string "dinable_type"
    t.string "breakfast_hours"
    t.integer "operator_id"
    t.string "operator_url"
    t.string "operator_type"
    t.integer "walking_time_proxy_id"
    t.string "sort_name"
    t.boolean "mobile_ordering"
    t.string "extinct_on_uncertain"
    t.string "opened_on_uncertain"
    t.string "opened_on_known"
    t.text "operational_notes"
    t.string "latitude"
    t.string "longitude"
    t.string "summary_at_top"
  end

  create_table "cached_touringplans_hotels", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "permalink"
    t.string "category_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "venue_permalink"
    t.string "address"
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
    t.string "theme"
    t.string "cost_range"
    t.boolean "shuttle_to_parks"
    t.string "cost_estimate"
    t.string "lodging_area_code"
  end

  create_table "dining_venues", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "venue_permalink"
  end

  create_table "eateries", force: :cascade do |t|
    t.string "name"
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

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "short_name"
    t.string "permalink"
    t.string "venue_permalink"
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

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
