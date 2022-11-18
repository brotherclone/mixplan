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

ActiveRecord::Schema[7.0].define(version: 2022_11_14_173630) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audio_file_services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audio_files", force: :cascade do |t|
    t.text "file_meta_blob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "track_version_id"
    t.bigint "audio_file_service_id"
    t.index ["audio_file_service_id"], name: "index_audio_files_on_audio_file_service_id"
    t.index ["track_version_id"], name: "index_audio_files_on_track_version_id"
  end

  create_table "issues", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "track_id"
    t.index ["track_id"], name: "index_issues_on_track_id"
  end

  create_table "project_user_roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_role_id"
    t.bigint "project_user_id"
    t.index ["project_user_id"], name: "index_project_user_roles_on_project_user_id"
    t.index ["user_role_id"], name: "index_project_user_roles_on_user_role_id"
  end

  create_table "project_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.bigint "user_id"
    t.index ["project_id"], name: "index_project_users_on_project_id"
    t.index ["user_id"], name: "index_project_users_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "audio_file_service_id"
    t.index ["audio_file_service_id"], name: "index_projects_on_audio_file_service_id"
  end

  create_table "track_issue_stages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "track_issue_id"
    t.bigint "track_stage_id"
    t.index ["track_issue_id"], name: "index_track_issue_stages_on_track_issue_id"
    t.index ["track_stage_id"], name: "index_track_issue_stages_on_track_stage_id"
  end

  create_table "track_issues", force: :cascade do |t|
    t.integer "vote"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "issue_id"
    t.bigint "project_user_id"
    t.bigint "track_version_id"
    t.index ["issue_id"], name: "index_track_issues_on_issue_id"
    t.index ["project_user_id"], name: "index_track_issues_on_project_user_id"
    t.index ["track_version_id"], name: "index_track_issues_on_track_version_id"
  end

  create_table "track_stage_categories", force: :cascade do |t|
    t.string "name"
    t.integer "category_sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track_stages", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "track_stage_category_id"
    t.index ["track_stage_category_id"], name: "index_track_stages_on_track_stage_category_id"
  end

  create_table "track_versions", force: :cascade do |t|
    t.string "version_number"
    t.string "version_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "track_id"
    t.index ["track_id"], name: "index_track_versions_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.index ["project_id"], name: "index_tracks_on_project_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "project_permission"
    t.string "track_permission"
    t.string "user_permission"
    t.string "project_user_permission"
    t.string "issue_permission"
    t.string "track_version_permission"
    t.string "audio_file_permission"
    t.string "audio_file_service_permission"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "icon"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
