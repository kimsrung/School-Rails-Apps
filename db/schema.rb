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

ActiveRecord::Schema.define(version: 20130920091639) do

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "short_title"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages_tutors", id: false, force: true do |t|
    t.integer "tutor_id",    null: false
    t.integer "language_id", null: false
  end

  create_table "linguistics", force: true do |t|
    t.integer  "tutor_id"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "linguistics", ["language_id"], name: "index_linguistics_on_language_id"
  add_index "linguistics", ["tutor_id"], name: "index_linguistics_on_tutor_id"

  create_table "objectives", force: true do |t|
    t.text     "description"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "objectives", ["course_id"], name: "index_objectives_on_course_id"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutors", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "designatory"
    t.decimal  "daily_rate"
    t.string   "publish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutors_languages", force: true do |t|
    t.integer "tutor_id"
    t.integer "language_id"
  end

  add_index "tutors_languages", ["language_id"], name: "index_tutors_languages_on_language_id"
  add_index "tutors_languages", ["tutor_id"], name: "index_tutors_languages_on_tutor_id"

  create_table "tutors_skills", force: true do |t|
    t.integer "tutor_id"
    t.integer "skill_id"
  end

  add_index "tutors_skills", ["skill_id"], name: "index_tutors_skills_on_skill_id"
  add_index "tutors_skills", ["tutor_id"], name: "index_tutors_skills_on_tutor_id"

end
