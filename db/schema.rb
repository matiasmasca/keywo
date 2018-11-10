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

ActiveRecord::Schema.define(version: 20181110194521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collaborators", force: :cascade do |t|
    t.integer "disponibilidad"
    t.bigint "city_id"
    t.bigint "zone_id"
    t.boolean "mobilidad"
    t.string "herramientas"
    t.bigint "skill_id"
    t.string "others_skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_collaborators_on_city_id"
    t.index ["skill_id"], name: "index_collaborators_on_skill_id"
    t.index ["zone_id"], name: "index_collaborators_on_zone_id"
  end

  create_table "investor_projects", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "investor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investor_id"], name: "index_investor_projects_on_investor_id"
    t.index ["project_id"], name: "index_investor_projects_on_project_id"
  end

  create_table "investors", force: :cascade do |t|
    t.bigint "sector_id"
    t.decimal "monto_minimo"
    t.decimal "monto_maximo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sector_id"], name: "index_investors_on_sector_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "sector_id"
    t.string "marca"
    t.text "descripcion"
    t.decimal "necesidad_dinero"
    t.string "necesidad_colaboradores"
    t.integer "necesidad_colaboradores_cantidad"
    t.string "necesidad_otra"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sector_id"], name: "index_projects_on_sector_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "name"
    t.string "phone_number"
    t.bigint "city_id"
    t.string "district"
    t.string "address"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_zones_on_city_id"
  end

  add_foreign_key "collaborators", "cities"
  add_foreign_key "collaborators", "skills"
  add_foreign_key "collaborators", "zones"
  add_foreign_key "investor_projects", "investors"
  add_foreign_key "investor_projects", "projects"
  add_foreign_key "investors", "sectors"
  add_foreign_key "projects", "sectors"
  add_foreign_key "projects", "users"
  add_foreign_key "zones", "cities"
end
