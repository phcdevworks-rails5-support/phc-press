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

ActiveRecord::Schema.define(version: 20170517064427) do

  create_table "phcpress_article_posts", force: :cascade do |t|
    t.string "psttitle"
    t.text "psttext"
    t.string "pststatus"
    t.string "pstimage"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcpress_category_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "press_category_versions"
  end

  create_table "phcpress_connection_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "press_connection_versions"
  end

  create_table "phcpress_friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "phcpress_fri_id_slugable_scope_type", unique: true
    t.index ["slug", "sluggable_type"], name: "index_phcpress_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_phcpress_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_phcpress_friendly_id_slugs_on_sluggable_type"
  end

  create_table "phcpress_modules_categories", force: :cascade do |t|
    t.string "catname"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcpress_modules_connections", force: :cascade do |t|
    t.integer "post_id"
    t.integer "category_id"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_phcpress_modules_connections_on_category_id"
    t.index ["post_id"], name: "index_phcpress_modules_connections_on_post_id"
  end

  create_table "phcpress_post_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "press_post_versions"
  end

end
