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

ActiveRecord::Schema.define(version: 20161109082416) do

  create_table "agenda_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.string   "time"
    t.text     "details",     limit: 65535
    t.integer  "congress_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["congress_id"], name: "index_agenda_events_on_congress_id", using: :btree
  end

  create_table "congress_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",     limit: 65535
    t.string   "color"
    t.integer  "position"
    t.integer  "congress_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["congress_id"], name: "index_congress_infos_on_congress_id", using: :btree
  end

  create_table "congresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "subtitle"
    t.string   "place"
    t.datetime "date_from"
    t.datetime "date_to"
    t.string   "host_company"
    t.string   "host_logo_url"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "color"
    t.integer  "template_id"
    t.text     "welcome_message", limit: 65535
  end

  create_table "hotel_various_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",    limit: 65535
    t.integer  "hotel_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["hotel_id"], name: "index_hotel_various_infos_on_hotel_id", using: :btree
  end

  create_table "hotels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "address"
    t.string   "postal_code"
    t.string   "city"
    t.string   "country"
    t.string   "phone_nbr"
    t.string   "check_in_time"
    t.string   "check_out_time"
    t.integer  "congress_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["congress_id"], name: "index_hotels_on_congress_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "api_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "agenda_events", "congresses"
  add_foreign_key "congress_infos", "congresses"
  add_foreign_key "hotel_various_infos", "hotels"
end
