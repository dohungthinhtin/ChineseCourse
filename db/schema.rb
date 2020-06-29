# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_13_023938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", id: :serial, force: :cascade do |t|
    t.string "content"
    t.integer "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "correct", default: false
    t.bigint "library_question_id"
    t.index ["library_question_id"], name: "index_answers_on_library_question_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "attempts", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "section_id"
    t.string "status"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "passed", default: false
    t.integer "course_id"
    t.index ["course_id"], name: "index_attempts_on_course_id"
    t.index ["section_id", "user_id"], name: "index_attempts_on_section_id_and_user_id"
    t.index ["section_id"], name: "index_attempts_on_section_id"
    t.index ["user_id"], name: "index_attempts_on_user_id"
  end

  create_table "certificates", id: :serial, force: :cascade do |t|
    t.integer "course_id"
    t.integer "user_id"
    t.date "purchase_date"
    t.float "purchase_price"
    t.string "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "ceu_id"
    t.index ["ceu_id"], name: "index_certificates_on_ceu_id"
    t.index ["course_id"], name: "index_certificates_on_course_id"
    t.index ["user_id", "course_id"], name: "index_certificates_on_user_id_and_course_id"
    t.index ["user_id"], name: "index_certificates_on_user_id"
  end

  create_table "ceus", id: :serial, force: :cascade do |t|
    t.integer "course_id"
    t.string "organization"
    t.text "name"
    t.float "credit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "code"
    t.index ["course_id"], name: "index_ceus_on_course_id"
  end

  create_table "courses", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 8, scale: 2, default: "39.99"
    t.string "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.boolean "released", default: false
    t.string "handout"
    t.string "image"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "library_questions", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "logs", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.integer "video_id"
    t.text "url"
    t.string "status"
    t.datetime "time"
    t.boolean "tracked", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id", "url", "status", "tracked"], name: "index_logs_on_user_id_and_url_and_status_and_tracked"
    t.index ["user_id"], name: "index_logs_on_user_id"
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.text "content"
    t.integer "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "num_questions_to_show", default: 10
    t.integer "passing_score", default: 70
  end

  create_table "resources", id: :serial, force: :cascade do |t|
    t.integer "course_id"
    t.string "title"
    t.string "image"
    t.text "description"
    t.string "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["course_id"], name: "index_resources_on_course_id"
  end

  create_table "results", id: :serial, force: :cascade do |t|
    t.integer "attempt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "question_id"
    t.integer "correct_answer_id"
    t.integer "answer_id"
    t.integer "next_question"
    t.integer "prev_question"
    t.index ["answer_id"], name: "index_results_on_answer_id"
    t.index ["attempt_id"], name: "index_results_on_attempt_id"
    t.index ["correct_answer_id"], name: "index_results_on_correct_answer_id"
    t.index ["question_id"], name: "index_results_on_question_id"
  end

  create_table "sections", id: :serial, force: :cascade do |t|
    t.integer "sequence"
    t.integer "course_id"
    t.integer "video_id"
    t.integer "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["course_id"], name: "index_sections_on_course_id"
    t.index ["quiz_id"], name: "index_sections_on_quiz_id"
    t.index ["video_id"], name: "index_sections_on_video_id"
  end

  create_table "stats", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.float "total_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["course_id"], name: "index_stats_on_course_id"
    t.index ["user_id", "course_id"], name: "index_stats_on_user_id_and_course_id"
    t.index ["user_id"], name: "index_stats_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "last_name", null: false
    t.string "password_digest", default: "", null: false
    t.string "email", default: "", null: false
    t.string "account", default: "member"
    t.string "slug"
    t.date "confirmed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "token"
    t.string "first_name", default: ""
    t.string "title", default: ""
    t.string "company", default: ""
    t.string "address1", default: ""
    t.string "address2", default: ""
    t.string "city", default: ""
    t.string "state", default: ""
    t.string "postal_code", default: ""
    t.string "country", default: ""
    t.string "phone", default: ""
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.index ["confirmed_at"], name: "index_users_on_confirmed_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "videos", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "length"
    t.string "presenter"
    t.string "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "slug"
    t.string "youtube_id"
    t.index ["youtube_id"], name: "index_videos_on_youtube_id"
  end

end
