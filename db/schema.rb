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

ActiveRecord::Schema.define(version: 2018_10_24_105719) do

  create_table "firearms", force: :cascade do |t|
    t.string "name"
    t.string "typearm"
    t.string "atstus"
    t.string "country"
    t.integer "year"
    t.string "caliber"
    t.string "action_type"
    t.string "trigger_type"
    t.string "feeding_mech"
    t.integer "barrel_l"
    t.integer "over_l"
    t.integer "over_l_f"
    t.integer "em_w"
    t.integer "l_w"
    t.integer "am_cap"
    t.string "fr_mat"
    t.string "stock_type"
    t.string "img_main"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
