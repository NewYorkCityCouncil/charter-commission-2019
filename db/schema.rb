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

ActiveRecord::Schema.define(version: 20180711163537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "cell"
    t.string "phone"
    t.string "comment_attachment"
    t.string "borough"
  end

  create_table "hearings", force: :cascade do |t|
    t.datetime "date_of_hearing"
    t.string "location_of_hearing"
    t.string "transcript_url"
    t.text "hearing_content"
    t.json "hearing_attachments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "youtube_url"
    t.string "livestream_embed"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.integer "zip_code"
    t.string "google_maps_url"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "position"
    t.string "number_of_positions"
    t.string "open_date"
    t.string "close_date"
    t.text "duties_and_responsibilities"
    t.text "responsibilities"
    t.text "requirements"
    t.string "attention"
    t.string "council_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.text "bio"
    t.string "image_url", default: "default.jpg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
    t.json "profile_pic"
    t.string "appointer"
    t.string "background"
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.string "publication_date"
    t.string "publication"
    t.string "contact_info"
    t.text "news_content"
    t.integer "order"
    t.json "news_attachments"
    t.string "news_type", default: "press_release"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "title"
    t.string "language"
    t.string "file_url"
    t.integer "month"
    t.integer "order"
    t.json "report_attachments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.text "bio"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
    t.json "profile_pic"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
