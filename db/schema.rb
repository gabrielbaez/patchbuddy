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

ActiveRecord::Schema[7.0].define(version: 2023_07_11_145358) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_codes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "manager"
    t.string "manager_email"
    t.string "support_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appserver_versions", force: :cascade do |t|
    t.bigint "appserver_id", null: false
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appserver_id"], name: "index_appserver_versions_on_appserver_id"
  end

  create_table "appservers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appserverstatuses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operatingsystems", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "support_start"
    t.date "support_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
    t.bigint "operatingsystem_id", null: false
    t.bigint "appserver_id", null: false
    t.bigint "appserver_version_id", null: false
    t.bigint "environment_id", null: false
    t.bigint "appserverstatus_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appserver_id"], name: "index_servers_on_appserver_id"
    t.index ["appserver_version_id"], name: "index_servers_on_appserver_version_id"
    t.index ["appserverstatus_id"], name: "index_servers_on_appserverstatus_id"
    t.index ["environment_id"], name: "index_servers_on_environment_id"
    t.index ["operatingsystem_id"], name: "index_servers_on_operatingsystem_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "username", default: ""
    t.string "name", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appserver_versions", "appservers"
  add_foreign_key "servers", "appserver_versions"
  add_foreign_key "servers", "appservers"
  add_foreign_key "servers", "appserverstatuses"
  add_foreign_key "servers", "environments"
  add_foreign_key "servers", "operatingsystems"
end
