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

ActiveRecord::Schema.define(version: 20160723220118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beacons", force: :cascade do |t|
    t.integer  "tippee_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tippee_id"], name: "index_beacons_on_tippee_id", using: :btree
  end

  create_table "tippees", force: :cascade do |t|
    t.text     "first_name",  null: false
    t.text     "last_name",   null: false
    t.text     "photo_url"
    t.text     "payment_url", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tips", force: :cascade do |t|
    t.decimal  "amount",     precision: 8, scale: 2, default: "0.0", null: false
    t.boolean  "processed",                          default: false, null: false
    t.integer  "tippee_id",                                          null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.index ["processed"], name: "index_tips_on_processed", using: :btree
    t.index ["tippee_id"], name: "index_tips_on_tippee_id", using: :btree
  end

end
