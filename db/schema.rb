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

ActiveRecord::Schema.define(version: 20150624155856) do

  create_table "answers", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "rating_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["rating_id"], name: "index_answers_on_rating_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["event_id"], name: "index_comments_on_event_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_dates", force: :cascade do |t|
    t.date     "date"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "event_dates", ["event_id"], name: "index_event_dates_on_event_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "start_daettime"
    t.datetime "end_datetime"
    t.string   "cost"
    t.integer  "reoccur"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "faq_sections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.integer  "rating_id"
    t.integer  "question_id"
    t.integer  "user_id"
    t.integer  "faq_section_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "faqs", ["faq_section_id"], name: "index_faqs_on_faq_section_id"
  add_index "faqs", ["question_id"], name: "index_faqs_on_question_id"
  add_index "faqs", ["rating_id"], name: "index_faqs_on_rating_id"
  add_index "faqs", ["user_id"], name: "index_faqs_on_user_id"

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.integer  "event_id"
    t.integer  "photo_challenge_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "galleries", ["event_id"], name: "index_galleries_on_event_id"
  add_index "galleries", ["photo_challenge_id"], name: "index_galleries_on_photo_challenge_id"

  create_table "intern_summaries", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "intern_summaries", ["user_id"], name: "index_intern_summaries_on_user_id"

  create_table "majors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "managers", ["department_id"], name: "index_managers_on_department_id"
  add_index "managers", ["user_id"], name: "index_managers_on_user_id"

  create_table "photo_challenges", force: :cascade do |t|
    t.string   "title"
    t.text     "theme"
    t.integer  "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photo_challenges", ["year_id"], name: "index_photo_challenges_on_year_id"

  create_table "photos", force: :cascade do |t|
    t.string   "picture"
    t.text     "comment"
    t.integer  "gallery_id"
    t.integer  "photo_challenge_id"
    t.integer  "winning_photo_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "photos", ["gallery_id"], name: "index_photos_on_gallery_id"
  add_index "photos", ["photo_challenge_id"], name: "index_photos_on_photo_challenge_id"
  add_index "photos", ["winning_photo_id"], name: "index_photos_on_winning_photo_id"

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "faq_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["faq_id"], name: "index_questions_on_faq_id"
  add_index "questions", ["user_id"], name: "index_questions_on_user_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "up_votes"
    t.integer  "down_votes"
    t.integer  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "profile_picture"
    t.integer  "college_id"
    t.integer  "major_id"
    t.integer  "department_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["college_id"], name: "index_users_on_college_id"
  add_index "users", ["department_id"], name: "index_users_on_department_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["major_id"], name: "index_users_on_major_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "winning_photos", force: :cascade do |t|
    t.integer  "photo_challenge_id"
    t.text     "reason"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "winning_photos", ["photo_challenge_id"], name: "index_winning_photos_on_photo_challenge_id"

  create_table "years", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
