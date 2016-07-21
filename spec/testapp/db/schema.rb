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

ActiveRecord::Schema.define(version: 20160720235314) do

  create_table "phcpress_articles_posts", force: :cascade do |t|
    t.string   "psttitle"
    t.text     "psttext"
    t.string   "pststatus"
    t.text     "pstexcerpts"
    t.string   "pstimage"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_phcpress_articles_posts_on_category_id"
  end

  create_table "phcpress_modules_categories", force: :cascade do |t|
    t.string   "catname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcpress_modules_connections", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_phcpress_modules_connections_on_category_id"
    t.index ["post_id"], name: "index_phcpress_modules_connections_on_post_id"
  end

end
