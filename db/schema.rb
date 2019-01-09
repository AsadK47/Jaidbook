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

ActiveRecord::Schema.define(version: 2019_01_08_161021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "user"
    t.text "body"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", id: :serial, force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "user_id"
    t.text "email"
    t.text "posted_to"
    t.index ["user_id"], name: "idx_16451_index_posts_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.text "email"
    t.text "title"
    t.text "body"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.text "email", default: ""
    t.text "encrypted_password", default: ""
    t.text "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "user_id"
    t.index ["email"], name: "idx_16443_index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "idx_16443_index_users_on_reset_password_token", unique: true
    t.index ["user_id"], name: "idx_16443_index_users_on_user_id"
  end

  add_foreign_key "comments", "posts"
end
