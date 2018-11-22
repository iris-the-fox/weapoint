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

ActiveRecord::Schema.define(version: 2018_11_22_092343) do

  create_table "ammunitions", force: :cascade do |t|
    t.string "name"
    t.string "type_bul"
    t.string "country"
    t.integer "weight"
    t.integer "speed"
    t.integer "energy"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comfy_cms_files", force: :cascade do |t|
    t.integer "site_id", null: false
    t.string "label", default: "", null: false
    t.text "description", limit: 2048
    t.integer "position", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id", "position"], name: "index_comfy_cms_files_on_site_id_and_position"
  end

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
    t.float "rate_of_fire"
    t.text "summary"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "learnings", force: :cascade do |t|
    t.string "title"
    t.text "note"
    t.integer "range", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary"
  end

  create_table "learntaggings", force: :cascade do |t|
    t.integer "learning_id"
    t.integer "learntag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["learning_id"], name: "index_learntaggings_on_learning_id"
    t.index ["learntag_id"], name: "index_learntaggings_on_learntag_id"
  end

  create_table "learntags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "summury"
    t.string "image"
    t.integer "range"
    t.datetime "datenews"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "range", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.datetime "datenews"
    t.string "ancestry"
    t.string "summary"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_taggings_on_post_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
