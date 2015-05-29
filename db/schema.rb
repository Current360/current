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

ActiveRecord::Schema.define(version: 20150529200629) do

  create_table "bios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "real_title"
    t.string   "funny_title"
    t.string   "question1"
    t.string   "question2"
    t.string   "question3"
    t.string   "question4"
    t.string   "question5"
    t.text     "answer1"
    t.text     "answer2"
    t.text     "answer3"
    t.text     "answer4"
    t.text     "answer5"
    t.string   "bio_pic"
    t.text     "overview"
    t.string   "large_bio_pic"
    t.string   "slug"
    t.string   "skill1"
    t.string   "skill2"
    t.string   "skill3"
    t.string   "skill4"
    t.string   "mobile_bg"
    t.integer  "order"
    t.integer  "skill1_value"
    t.integer  "skill2_value"
    t.integer  "skill3_value"
    t.integer  "skill4_value"
    t.string   "dribbble"
    t.integer  "artist"
    t.string   "phone"
    t.string   "email"
    t.string   "cell"
  end

  add_index "bios", ["slug"], name: "index_bios_on_slug", unique: true, using: :btree

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category"
    t.integer  "author"
    t.string   "blog_picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "blurred_image"
    t.string   "share1"
    t.string   "share2"
  end

  add_index "blogs", ["slug"], name: "index_blogs_on_slug", unique: true, using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "challenge"
    t.text     "insight"
    t.text     "solution"
    t.text     "results"
    t.text     "quote"
    t.string   "cite"
    t.integer  "category"
    t.string   "main_image"
    t.string   "side_image1"
    t.string   "side_image2"
    t.string   "logo"
    t.integer  "capabilities"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "comp1"
    t.string   "comp2"
    t.string   "comp3"
    t.string   "comp4"
    t.string   "comp5"
    t.string   "landing_image"
  end

  add_index "projects", ["slug"], name: "index_projects_on_slug", unique: true, using: :btree

  create_table "quotes", force: true do |t|
    t.text     "quote"
    t.string   "cite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
