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

ActiveRecord::Schema.define(version: 2021_03_30_174227) do

  create_table "friendships", force: :cascade do |t|
    t.integer "member_id"
    t.integer "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["member_id"], name: "index_friendships_on_member_id"
  end

  create_table "headers", force: :cascade do |t|
    t.string "index"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "website_url"
    t.string "shorten_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"taggable_type\", \"taggable_id\"", name: "index_profiles_on_taggable_type_and_taggable_id"
    t.index ["member_id"], name: "index_profiles_on_member_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "text"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.integer "profile_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_tags_on_profile_id"
    t.index ["taggable_type", "taggable_id"], name: "index_tags_on_taggable"
  end

end
