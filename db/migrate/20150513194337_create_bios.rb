class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
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
      t.timestamps
    end
  end
end
