# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160725203430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "theme",       null: false
    t.text     "description", null: false
    t.date     "date",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "nominations", force: :cascade do |t|
    t.string   "submitter_name",  null: false
    t.string   "submitter_email", null: false
    t.string   "speaker_name",    null: false
    t.string   "speaker_website"
    t.text     "description",     null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.integer  "event_id"
    t.text     "description", null: false
    t.string   "quote"
    t.string   "photo_url"
    t.string   "name",        null: false
    t.string   "tagline",     null: false
    t.string   "twitter"
    t.string   "youtube_url"
    t.string   "website"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "speakers", ["event_id"], name: "index_speakers_on_event_id", using: :btree

  create_table "sponsors", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "name",        null: false
    t.string   "website",     null: false
    t.string   "logo_url"
    t.string   "tagline",     null: false
    t.text     "description", null: false
    t.string   "facebook"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sponsors", ["event_id"], name: "index_sponsors_on_event_id", using: :btree

  create_table "team_members", force: :cascade do |t|
    t.string   "photo_url"
    t.string   "name"
    t.string   "role"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin",                  default: false
    t.string   "username"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
