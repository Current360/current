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

ActiveRecord::Schema.define(version: 20150521171850) do

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
  end

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category"
    t.integer  "author"
    t.string   "blog_picture"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
  end

end
